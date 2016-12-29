<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of JambController
 *
 * @author Theophilus
 */
class JambController extends BaseController{
    //put your code here
    public function initialize(){
        parent::initialize();
        $response   = new \Phalcon\Http\Response();
        header("Access-Control-Allow-Origin:*");
    }
    
    public function indexAction(){
        $response   = new \Phalcon\Http\Response();
        if($this->request->isPost() && $this->request->isAjax()){
            $textForm   = $this->request->getPost('textForm');
            $jambNumber = \Multiple\Frontend\Models\Jambnumbers::
                    findFirstByJamb_registration_number($textForm);
            $response->setHeader('Content-Type', 'application/json');
            if($jambNumber != false){
                $response->setJsonContent(array('status' => true, 
                    'data' => $jambNumber->jamb_registration_number));
                $this->session->set('jambregno', $this->request->getPost('textForm'));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $response->send();
                return;
            }
            else{
                $response->setJsonContent(array('status' => false));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $response->send();
                return; exit();
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('index/');
        return;
    }
}
