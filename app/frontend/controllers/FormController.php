<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of FormController
 *
 * @author ENNY
 */
class FormController extends BaseController{
    //put your code here
    private $_response;
    private $_currentStage;
    
    public function initialize() {
        parent::initialize();
        $this->_response    = new \Phalcon\Http\Response();
        $this->_response->setHeader('Content-Type', 'application/json');
    }
    
    public function indexAction(){
        $this->assets->collection('footers')->addJs(
                'assets/admin/pages/scripts/form-wizard.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function beforeExecuteRoute(\Phalcon\Mvc\Dispatcher $dispatcher){
        $action     = $dispatcher->getActionName();
        $controller = $dispatcher->getControllerName();
        $r  = $this->session->get('auth')['register_id'];
        
        //check for the existence of the student in the database
        $this->_currentStage = \Multiple\Frontend\Models\
                        Register::findFirstByRegister_id($r);
        
        $param  = $this->dispatcher->getParams();
        //var_dump($this->_currentStage); exit;
        if($action == 'index' && $this->_currentStage->studentone){
            $dispatcher->forward(array(
                "action"        => "index",
                "controller"    => "dashboard",
                "params"        => array('active','disabled')
            ));
            $this->flash->error('Student Already Existed.');
            return;
        }
        elseif(!isset($param[0]->imagecaption_id) && !$this->_currentStage->imagecaption){
            $dispatcher->forward(array(
                "action"        => "uploadimg",
                "controller"    => "dashboard",
                "params"        => array('active',$r)
            ));
            return;
        }
    }
    
    public function stageAction(){
        $response   = new \Phalcon\Http\Response();
        if($this->request->isPost() && $this->request->isAjax()){
            $setPost    = $this->request->getPost();
            $arraySubmitted = array(
                'hepatitis'            => array(
                    $setPost['hepatitis'],$setPost['immune_hepatitis']),
                'yellow_fever'          => array(
                    $setPost['yellow_fever'],$setPost['immune_yellow_fever']),
                'tetanus' => array(
                    $setPost['tetanus'], $setPost['immune_tetanus']),
                'csm'       => array(
                    $setPost['csm'], $setPost['immune_csm']),
            );
            
            //Unset the array variables
            unset($setPost['hepatitis']); 
            unset($setPost['yellow_fever']); 
            unset($setPost['tetanus']);
            unset($setPost['csm']);
            
            //Unset the variables with the number of values
            unset($setPost['immune_hepatitis']);
            unset($setPost['immune_yellow_fever']);
            unset($setPost['immune_tetanus']);
            unset($setPost['immune_csm']);
            
            //Combine not using array_combine use +
            $studentOne = new \Multiple\Frontend\Models\Studentone();
            $response->setHeader('Content-Type', 'application/json');
            $stackArray = $setPost + array('immunize' => json_encode($arraySubmitted));
            
            if($studentOne->save($stackArray) != false){
                $response->setJsonContent(array('status' => 'OK'));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $response->send();                exit();
            }
            else{
                $messages   = array();
                foreach($studentOne->getMessages() as $key=>$values){
                    $messages[] = $values->getMessage();
                    $this->flash->error($values->getMessage());
                }
                $response->setJsonContent(array('status'=>'ERROR','data'=>$messages));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $response->send();                exit();
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('form/index?task=redirect_illegal');
        return;
    }
}
