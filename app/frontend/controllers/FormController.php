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
    
    public function initialize() {
        parent::initialize();
        $this->_response    = new \Phalcon\Http\Response();
        $this->_response->setHeader('Content-Type', 'application/json');
    }
    
    public function indexAction(){
        
    }
    
    public function stage1Action(){
        if($this->request->isPost() && $this->request->isAjax()){
            $student    = new \Multiple\Frontend\Models\Studentone();
            if($student->create($this->request->getPost())){
                $this->_response->setJsonContent(array('status' => true));
                return;
            }
            else{
                $this->_response->setJsonContent(array(
                    'status' => false,'error' => $student->getMessages()));
            }
        }
        $this->_response->setHeader('Content-Type', 'application/json');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->_response->send(); $this->_response->sendHeaders();
        return;
    }
    
    public function stage2Action(){
        if($this->request->isPost() && $this->request->isAjax()){
            $student    = new \Multiple\Frontend\Models\Studenttwo();
            if($student->create($this->request->getPost())){
                $this->_response->setJsonContent(array('status' => true));
                return;
            }
            else{
                $this->_response->setJsonContent(array(
                    'status' => false,'error' => $student->getMessages()));
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->_response->send();
        return;
    }
    
    public function stage3Action(){
        if($this->request->isPost() && $this->request->isAjax()){
            $student    = new \Multiple\Frontend\Models\Studentthree();
            if($student->create($this->request->getPost())){
                $this->_response->setJsonContent(array('status' => true));
                return;
            }
            else{
                $this->_response->setJsonContent(array(
                    'status' => false,'error' => $student->getMessages()));
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->_response->send();
        return;
    }
    
    public function stage4Action(){
        if($this->request->isPost() && $this->request->isAjax()){
            $student    = new \Multiple\Frontend\Models\Studentfour();
            if($student->create($this->request->getPost())){
                $this->_response->setJsonContent(array('status' => true));
                return;
            }
            else{
                $this->_response->setJsonContent(array(
                    'status' => false,'error' => $student->getMessages()));
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->_response->send();
        return;
    }
}
