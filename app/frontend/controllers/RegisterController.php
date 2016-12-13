<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RegisterationController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\Register;

class RegisterController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Registration');
    }
    
    public function indexAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function signupAction(){
        if($this->request->isPost()){
            $register   = new Register();
            if($register->create($this->request->getPost())){
                $this->flash->success('Registration Done Successfully');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->response->redirect('register/?token='.  uniqid());
            }
            else{
                $this->component->helper->getErrorMsgs($register,'register/?error');
                $this->flash->error('Unable to register user');
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        return;
    }
}
