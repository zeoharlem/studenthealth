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
    
    private $_currentStage, $_imageflow;
    const DATABASE_OK = 1, DATABASE_ERROR = 0, FILE_BIG = 2, FILE_ERROR = 3;
    
    public function initialize(){
        parent::initialize();
        \Phalcon\Tag::appendTitle('Dashboard');
        $this->assets->collection('profile')
                ->addCss('assets/admin/pages/css/profile.min.css')
                ->addCss('assets/admin/pages/css/blog.min.css');
    }
    
    public function beforeExecuteRoute(\Phalcon\Mvc\Dispatcher $dispatcher){
        $action     = $dispatcher->getActionName();
        $controller = $dispatcher->getControllerName();
        $r  = $this->session->get('auth')['register_id'];
        
        $this->_imageflow = \Multiple\Frontend\Models\
                Imagecaption::findFirstByRegister_id($r);
        
        //var_dump($this->_currentStage); exit;
        if($action == 'index' && !$this->_imageflow){
            $dispatcher->forward(array(
                "action"        => "uploadimg",
                "controller"    => "dashboard",
                "params"        => array('active',$r)
            ));
            return;
        }
        elseif($action == 'index' && ($this->_imageflow && !$this->_imageflow->studentone)){
            $dispatcher->forward(array(
                "action"        => "index",
                "controller"    => "form",
                "params"        => array($this->_imageflow,$r)
            ));
            return;
        }
        elseif($action == 'index' && $controller != 'dashboard' && 
                ($this->_imageflow && $this->_imageflow->studentone)){
            $dispatcher->forward(array(
                "action"        => "index",
                "controller"    => "dashboard",
                "params"        => array($this->_imageflow,$r)
            ));
            return;
        }
        $this->view->setVar('currUri', $this->router->getRewriteUri());
        $this->view->setVar('dataImage', $this->_imageflow);
    }
    
    public function indexAction(){
        if($this->request->isPost()){
            $student    = new \Multiple\Frontend\Models\Studentone();
            if($student->create($this->request->getPost())){
                $this->response->redirect('dashboard/next1?task='.
                        $this->component->helper->makeRandomString(15));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                return;
            }
            else{
                $this->component->helper->getErrorMsgs($student,'dashboard/index');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            }
        }
        
        $this->assets->collection('footers')
                ->addJs('assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js')
                ->addJs('assets/admin/global/plugins/horizontal-timeline/horozontal-timeline.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function profileAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    //Action not used since database was made
    //Single reference without relating each
    public function next2Action(){
        $escape = new \Phalcon\Escaper();
        $r  = $this->__createJson($this->request->getPost());
        if($this->request->isPost()){
            $arraySubmitted = array(
                'nof'               => json_encode($r),
                'tobacco_products'  => $this->request->getPost('tobacco_products'),
                'consumed_alcohol'  => $this->request->getPost('consumed_alcohol'),
                'physical_activity' => $this->request->getPost('physical_activity'),
                'smoker'            => $this->request->getPost('smoker'),
                'alcohol'           => $this->request->getPost('alcohol'),
            );
            $student4   = new \Multiple\Frontend\Models\Studentfour();
            if($student4->create($arraySubmitted) != false){
                $this->response->redirect('dashboard/uploadimg?task='.
                        $this->component->helper->makeRandomString(15));
            }
            else{
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->component->helper->getErrorMsgs($student4,'dashboard/next2');
                return;
            }
        }
        $this->assets->collection('footers')->addJs(
                'assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function editAction(){
        $profile    = \Multiple\Frontend\Models\
                Register::findFirstByRegister_id(
                        $this->session->get('auth')['register_id']);
        if($this->request->isPost()){
            if($profile->update($this->request->getPost())){
                $this->flash->success('Update was successful done');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->response->redirect('dashboard/edit?task=updated&msg=success');
            }
            else{
                $message    = array();
                foreach($profile->getMessages() as $keys=>$values){
                    $message[]  = $values->getMessage().' '.$values->getType();
                }
                $this->flash->error(implode(', ', $message));
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        $this->view->setVar('profile', $profile);
        return;
    }
    
    public function changeAction(){
        $register   = \Multiple\Frontend\Models\
                Register::findFirstByRegister_id(
                        $this->session->get('auth')['register_id']);
        $oldpaswd   = $this->request->getPost('oldpassword');
        
        if($this->request->isPost()){
            if($register){
                if($this->security->checkHash($oldpaswd, $register->password)){
                    $register->password = $this->request->getPost('password');
                    if($register->update() != FALSE){
                        $this->flash->success('Password Change Successfully');
                        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                        $this->response->redirect('dashboard/change?task=fix_password');
                        return;
                    }
                    else{
                        $message    = array();
                        foreach($profile->getMessages() as $keys=>$values){
                            $message[]  = $values->getMessage().' '.$values->getType();
                        }
                        $this->flash->error(implode(', ', $message));
                        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                        $this->response->redirect('dashboard/change?task=paswd_err');
                        return;
                    }
                    return;
                }
                else{
                    $this->flash->error('Old Password seems not to be correct. Try Again');
                }
            }
            else{
                $this->security->hash(rand());
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        $this->view->setVar('profile', $profile);
        return;
    }

    public function removeimgAction(){
        $response   = new \Phalcon\Http\Response();
        $r  = $this->session->get('auth')['register_id'];
        if($this->request->isPost() && $this->request->isAjax()){
            if($this->request->getPost('task')){
                $imagedb    = \Multiple\Frontend\Models\
                        Imagecaption::findFirstByRegister_id(
                                $this->session->get('auth')['register_id']);
                if($imagedb){
                    if($imagedb->delete()){
                        $folder = '../public/assets/main/uploads';
                        unlink($folder . '/' . $imagedb->image_url);
                        //$this->response->redirect('dashboard/uploadimg');
                        $response->setJsonContent(array('status' => 'OK'));
                        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                        $response->setHeader('Content-Type', 'application/json');
                        $response->send();
                        return;
                    }
                }
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        return;
    }
    
    //Upload was called using ajax with dropzone js
    public function uploadimgAction(){
        $timeStample    = time();
        $this->__dropZoneActivateForm();
        $typeResp       = new \Phalcon\Http\Response();
        $imageCaption   = new \Multiple\Frontend\Models\Imagecaption();
        if($this->request->hasFiles() && $this->request->isAjax()){
            $folder = '../public/assets/main/uploads/';
            $file   = $this->request->getUploadedFiles();
            
            $getRealType    = $file[0]->getRealType();
            $gdAdapter      = new \Phalcon\Image\Adapter\Gd($file[0]->getTempName());
            $resultAdpater  = $gdAdapter->resize(200, 200)->crop(200, 200);
            
            if($getRealType != 'image/png' && $getRealType != 'image/jpeg'){
                $this->flash->error("Attention! Your  upload is not an Image.");
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
                return;
            }
            
            if($gdAdapter->save($folder.$timeStample.'_'.$file[0]->getName())){
                $taskPost   = array(
                        'image_url'     => $timeStample.'_'.$file[0]->getName(), 
                        'register_id'   => $this->session->get('auth')['register_id']);
                
                if($imageCaption->create($taskPost) != false){
                    $typeResp->setJsonContent(array('status'=>self::DATABASE_OK));
                    return;
                }
                else{
                    $messages   = array();
                    foreach($imageCaption->getMessages() as $keys=>$values){
                        $messages[] = $values->getMessage().' '.$values->getType();
                    }
                    $typeResp->setJsonContent(array('status'=>self::DATABASE_ERROR, 
                        'msg'=>$messages));
                    return;
                }
            }
            elseif(number_format($file[0]->getSize()/1048576, 2) > 1){
                $typeResp->setJsonContent(array('status'=>self::FILE_BIG, 
                    'msg'=>'file size should not be bigger than 1'));
                return;
            }
            else{
                $typeResp->setJsonContent(array('status'=>self::FILE_ERROR,
                    'msg'=>$file[0]->getError()));
                return;
            }
            $typeResp->setHeader('Content-Type', 'application/json');
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $typeResp->send();            exit();
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    //This line of code was for brevity sake
    private function __dropZoneActivateForm(){
        $this->assets->collection('headers')
                ->addCss('assets/admin/global/plugins/dropzone/dropzone.min.css')
                ->addCss('assets/admin/global/plugins/dropzone/basic.min.css');
        $this->assets->collection('footers')
                ->addJs('assets/admin/global/plugins/dropzone/dropzone.min.js')
                ->addJs('assets/admin/pages/scripts/form-dropzone.js');
    }
    
    //Create JSON value for the specific posts
    //Actually this should be dynamically generated
    private function __createJson($array){
        $taskArray  = array(
            'fruits'            => array('type' => $array['fruits'], 'nof' => $array['fruits_nof']),
            'vegetable'         => array('type' => $array['vegetable'], 'nof' => $array['vegetable_nof']),
            'cooked_vegetables' => array('type' => $array['cooked_vegetables'], 'nof' => $array['cooked_vegetables_nof']),
            'pastries'          => array('type' => $array['pastries'], 'nof' => $array['pastries_nof']),
            'fried_foods'       => array('type' => $array['fried_foods'], 'nof' => $array['fried_food_nof']),
            'soft_drink'        => array('type' => $array['soft_drink'], 'nof' => $array['soft_drink_nof']),
            'red_meat'          => array('type' => $array['red_meat'], 'nof' => $array['red_meat'])
        );
        return $taskArray;
    }
}
?>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   