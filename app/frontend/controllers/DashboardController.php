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
    
    public function initialize(){
        parent::initialize();
        \Phalcon\Tag::appendTitle('Dashboard');
        $this->assets->collection('profile')
                ->addCss('assets/admin/css/separate/vendor/slick.min.css')
                ->addCss('assets/admin/css/separate/pages/profile-2.min.css')
                ->addCss('assets/admin/css/separate/vendor/bootstrap-select/bootstrap-select.min.css');
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
        $this->assets->collection('footers')->addJs(
                'assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function next1Action(){
        if($this->request->isPost()){
            $student    = new \Multiple\Frontend\Models\Studenttwo();
            if($student->create($this->request->getPost())){
                $this->response->redirect('dashboard/next2n?task='.
                        $this->component->helper->makeRandomString(15));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                return;
            }
            else{
                $this->component->helper->getErrorMsgs($student,'dashboard/index');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            }
        }
        $this->assets->collection('footers')->addJs(
                'assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    public function next2nAction(){
        if($this->request->isPost()){
            $student    = new \Multiple\Frontend\Models\Studentthree();
            if($student->create($this->request->getPost())){
                $this->response->redirect('dashboard/next2?task='.
                        $this->component->helper->makeRandomString(15));
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                return;
            }
            else{
                $this->component->helper->getErrorMsgs($student,'dashboard/index');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            }
        }
        $this->assets->collection('footers')->addJs(
                'assets/admin/js/lib/bootstrap-select/bootstrap-select.min.js');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
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
    
    public function uploadimgAction(){
        $timeStample    = time();
        $imageCaption   = new \Multiple\Frontend\Models\Imagecaption();
        if($this->request->hasFiles() && $this->request->isPost()){
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
                    $this->flash->success('Awesome! Form Submission Completed');
                    $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
                    return;
                }
                else{
                    $this->component->helper->getErrorMsgs($imageCaption,'dashboard/uploadimg');
                    $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
                }
            }
            elseif(number_format($file[0]->getSize()/1048576, 2) > 1){
                $this->flash->error("File size is bigger than 1MB");
                $this->response->redirect('dashboard/uploadimg?task=size_error');
            }
            else{
                $this->flash->error("Image Errors! ".$file[0]->getError());
                $this->response->redirect('dashboard/uploadimg?task=image_error');
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        return;
    }
    
    private function __createJson($array){
        $taskArray  = array(
            'fruits' => array('type' => $array['fruits'], 'nof' => $array['fruits_nof']),
            'vegetable' => array('type' => $array['vegetable'], 'nof' => $array['vegetable_nof']),
            'cooked_vegetables' => array('type' => $array['cooked_vegetables'], 'nof' => $array['cooked_vegetables_nof']),
            'pastries' => array('type' => $array['pastries'], 'nof' => $array['pastries_nof']),
            'fried_foods' => array('type' => $array['fried_foods'], 'nof' => $array['fried_food_nof']),
            'soft_drink'  => array('type' => $array['soft_drink'], 'nof' => $array['soft_drink_nof']),
            'red_meat'    => array('type' => $array['red_meat'], 'nof' => $array['red_meat'])
        );
        return $taskArray;
    }
}
?>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   