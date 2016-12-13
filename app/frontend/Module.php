<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Module
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend;

use Phalcon\Loader;
use Phalcon\Config\Adapter\Ini as ConfigIni;
use Phalcon\DiInterface;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;
use Phalcon\Mvc\ModuleDefinitionInterface;
use Phalcon\Mvc\Dispatcher\Exception as DispatcherException;
use Phalcon\Dispatcher;

class Module implements ModuleDefinitionInterface{
    
    public function registerAutoloaders(DiInterface $di = null) {
        $loader = new Loader();
        $loader->registerNamespaces(array(
            'Multiple\Frontend\Controllers' => '../app/frontend/controllers/',
            'Multiple\Frontend\Models'      => '../app/frontend/models/',
            'Multiple\Frontend\Plugins'     => '../app/frontend/plugins/',
            'Multiple\Frontend\Config'      => '../app/frontend/config/',
            'Multiple\Frontend\Component'   => '../app/frontend/components/',
            'TableSort'                     => __DIR__ . '/../../vendor/mattdanger/phalcon-table-sort/src/TableSort/',
            'VoltHelpers'                   => __DIR__ . '/../../vendor/mattdanger/volt-helpers/src/VoltHelpers/',
            'Phalcon\Ext\Mailer'            => __DIR__ . '/../../vendor/phalcon-ext/mailer/src/',
        ));
        $loader->register();
    }

    public function registerServices(DiInterface $di) {
        define('APP_PATH', realpath('..') . DIRECTORY_SEPARATOR);
    
        //Line Reads the configuration ini file
        $config = new ConfigIni(APP_PATH . 'app/frontend/config/config.ini');
        
        //Return API config
        $di->setShared('config', function() use ($config){
            return $config;
        });

    //    //Return API config
    //    $di->setShared('api', function() use ($api){
    //        return $api;
    //    });

        $mailerConfig   = [
            'driver'     => 'mail',
            'from'       => [
                'email' => 'example@gmail.com',
                'name'  => 'YOUR FROM NAME'
            ]
        ];
        
        $di->setShared('mailer', function() use ($mailerConfig){
            $mailer = new \Phalcon\Ext\Mailer\Manager($mailerConfig);
            return $mailer;
        });
        
        //Database connection Dependencies
        $di->set('db', function() use ($di){
            $dbConfig = $di->get('config')->get('db')->toArray();
            //Use the database configure in the config file 
            $db = new \Phalcon\Db\Adapter\Pdo\Mysql($dbConfig);
            return $db;
        });

        //Establish the security level
        $di->set('security', function(){
            $security = new \Phalcon\Security();
            //$security->setWorkFactor(12);
            return $security;
        }, true);

        //Set the view directories
        $di->set('view', function() use($config){
            $eventsManager = new \Phalcon\Events\Manager(); 
            $eventsManager->attach("view", function($eventType, $view){
                //echo $eventType->getType(), '-', $view->getActiveRenderPath(), PHP_EOL;
            });
            $view = new \Phalcon\Mvc\View();
            //$view->setViewsDir('../app/views');
            //echo $config->application->viewsDir;
            $view->setViewsDir(APP_PATH . $config->application->viewsDir);
            $view->registerEngines(array(".volt" => 'volt'));
            //updated view function
            $view->setEventsManager($eventsManager);
            return $view;
        });

        //Setting up the volt cache engine
        $di->set('volt', function($view, $di){
            $volt = new \Phalcon\Mvc\View\Engine\Volt($view, $di);
            $volt->setOptions(array('compiledPath' => APP_PATH . 'cache/volt/'));
            $compiler = $volt->getCompiler();
            $compiler->addFunction('jsonDecoder', 'json_decode');
            $compiler->addFunction('convert', function($resolveArgs, $exprArgs){
                //use $resolvedArgs to pass the arguments exactly as 
                return 'Multiple\Frontend\Models\Products::__convert('.$resolveArgs.')';
            });
            $compiler->addFunction('address', function($resolveArgs, $exprArgs){
                //use $resolvedArgs to pass the arguments exactly as 
                return 'Multiple\Frontend\Models\Products::__getAddress('.$resolveArgs.')';
            });
            $compiler->addFunction('sortLink', function($resolveArgs, $exprArgs){
                return '\TableSort\Sort::sortLink('.$resolveArgs.')';
            });
            $compiler->addFunction('sortIcon', function($resolveArgs, $exprArgs){
                return '\TableSort\Sort::sortIcon('.$resolveArgs.')';
            });
            $compiler->addFunction('paginationPath', function($resolveArgs, $exprArgs){
                return '\VoltHelpers\Helpers::paginationPath('.$resolveArgs.')';
            });
            return $volt;
        }, true);

        //Set session
        $di->setShared('session', function(){
            $session = new \Phalcon\Session\Adapter\Files();
            $session->start();
            return $session;
        });

        //Return custom components
        $di->setShared('component', function(){
            $obj = new \stdClass();
            $obj->helper            = new Component\Helper();
            //$Obj->grFingerService   = new GrFingerService();
            return $obj;
        });

        //Set up GrFingerService for Biometrics
        $di->setShared('grFingerService', function(){
            $grFingerService    = new GrFingerService();
            return $grFingerService;
        });

        //Flash Data(Temporary Data)
        $di->set('flash', function(){
            $flash = new \Phalcon\Flash\Session(array(
                'error' => 'alert alert-danger',
                'success' => 'alert alert-success',
                'notice' => 'alert alert-info',
                'warning' => 'alert alert-warning'
            ));
            return $flash;
        });

        //Model Event Manager
        $di->set('modelsManager', function(){
            return new \Phalcon\Mvc\Model\Manager();
        });

        //Meta-data
        $di['modesMetadata'] = function(){
            $metaData = new \Phalcon\Mvc\Model\MetaData\Apc(array(
                "lifetime"=>84600,
                "prefix"=>"metaData"
            ));
            return $metaData;
        };

        //Setup a base URI so that all generated URIs include the tutorial folder
        $di->set('url', function(){
            $url = new \Phalcon\Mvc\Url();
            $url->setBaseUri('/studenthealth/');
            return $url;
        });

        $di->setShared('dataTables', function($options){
            return new DataTables\DataTable($options);
        });

        //Custom Dispatcher (Overides the Default)
        $di->set('dispatcher', function() use ($di){
            $eventsManager = $di->getShared('eventsManager');
            //Missing File Error 404 an 505
            $eventsManager->attach("dispatch:beforeException", function($event, $dispatch, $exception){
                if($exception instanceof DispatcherException){
                    $dispatch->forward(array(
                        'controller'    => 'error',
                        'action'        => 'show404'
                    ));
                    return false;
                }
                //echo Dispatcher::EXCEPTION_CYCLIC_ROUTING; exit;
                switch($exception->getCode()){
                    case Dispatcher::EXCEPTION_INVALID_HANDLER:
                    case Dispatcher::EXCEPTION_ACTION_NOT_FOUND:
                    case Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:
                    case Dispatcher::EXCEPTION_CYCLIC_ROUTING:
                        $dispatch->forward(array(
                            'controller'    => 'error',
                            'action'        => 'show404'
                        ));
                        return false;
                }
            });
            
            //Custom ACL Class
            $permission = new Config\Permission();
            //Listen for events from the permission class
            $eventsManager->attach('dispatch', $permission);
            $eventsManager->attach('dispatch', Plugins\LoggersPlugin::getLoggerInst());
            $eventsManager->attach('dispatch', Plugins\ExceptionsPlugin::getExceptionInst());

            $dispatcher = new MvcDispatcher();
            $dispatcher->setDefaultNamespace("Multiple\Frontend\Controllers\\");
            
            //Bind the eventsManager to the Dispatcher
            $dispatcher->setEventsManager($eventsManager);
            return $dispatcher;
        }, true);
    }

}
