<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DashboardController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

class DashboardController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Dashboard');
        $this->assets->collection('profile')
                ->addCss('assets/admin/css/separate/vendor/slick.min.css')
                ->addCss('assets/admin/css/separate/pages/profile.min.css')
                ->addCss('assets/admin/css/separate/vendor/bootstrap-select/bootstrap-select.min.css');
    }
    
    public function indexAction(){
        if($this->request->isPost()){
            $this->response->redirect('dashboard/next1');
        }
        $this->assets->collection('footers')
                ->addJs('assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function next1Action(){
        if($this->request->isPost()){
            $this->response->redirect('dashboard/next2');
        }
        $this->assets->collection('footers')
                ->addJs('assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function next2Action(){
        $this->assets->collection('footers')
                ->addJs('assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
}
