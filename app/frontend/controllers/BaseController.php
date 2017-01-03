<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BaseController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Phalcon\Mvc\Controller;
class BaseController extends Controller{
    //put your code here
    public function initialize(){
        //var_dump($this->mailer); exit;
        \Phalcon\Tag::setTitleSeparator(' | ');
        \Phalcon\Tag::prependTitle('Health System');
        //var_dump($this->session->get('auth')['dataImage']); exit;
        $this->assets->collection('headers')
                ->addCss('assets/admin/global/plugins/font-awesome/css/font-awesome.min.css')
                ->addCss('assets/admin/global/plugins/simple-line-icons/simple-line-icons.min.css')
                ->addCss('assets/admin/global/plugins/bootstrap/css/bootstrap.min.css')
                ->addCss('assets/admin/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css')
                ->addCss('assets/admin/global/plugins/select2/css/select2.min.css')
                ->addCss('assets/admin/global/plugins/select2/css/select2-bootstrap.min.css')
                ->addCss('assets/admin/global/css/components-md.min.css')
                ->addCss('assets/admin/global/css/plugins-md.min.css')
                ->addCss('assets/admin/layouts/layout/css/layout.min.css')
                ->addCss('assets/admin/layouts/layout/css/themes/darkblue.min.css')
                ->addCss('assets/admin/layouts/layout/css/custom.min.css');
        
        //Cascading style sheet for the login interface
        $this->assets->collection('login')
                ->addJs('assets/main/libs/bootstrap/css/bootstrap.min.css')
                ->addJs('assets/main/libs/pace/pace.css')
                ->addJs('assets/main/libs/animate-css/animate.min.css')
                ->addJs('assets/main/libs/iconmoon/style.css')
                ->addJs('assets/main/css/style.css');
        
        $this->assets->collection('loginfooters')
                ->addJs('assets/main/libs/less-js/less-1.7.5.min.js')
                ->addJs('assets/main/libs/pace/pace.min.js')
                ->addJs('assets/main/libs/jquery/jquery-1.11.1.min.js')
                ->addJs('assets/main/libs/bootstrap/js/bootstrap.min.js')
                ->addJs('assets/main/libs/jquery-browser/jquery.browser.min.js')
                ->addJs('assets/main/libs/fastclick/fastclick.js')
                ->addJs('assets/main/libs/stellarjs/jquery.stellar.min.js')
                ->addJs('assets/main/libs/jquery-appear/jquery.appear.js')
                ->addJs('assets/main/js/init.js')
                ->addJs('assets/main/js/app.js');
        
        //Create | add the javascript script link
        $this->assets->collection('footers')
                ->addJs('assets/admin/global/plugins/jquery.min.js')
                ->addJs('assets/admin/global/plugins/bootstrap/js/bootstrap.min.js')
                ->addJs('assets/admin/global/plugins/js.cookie.min.js')
                ->addJs('assets/admin/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js')
                ->addJs('assets/admin/global/plugins/jquery.blockui.min.js')
                ->addJs('assets/admin/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js')
                //<-- BEGIN PAGE PLUGIN -->
                ->addJs('assets/admin/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js')
                ->addJs('assets/admin/global/plugins/jquery.input-ip-address-control-1.0.min.js')
                ->addJs('assets/admin/global/plugins/select2/js/select2.full.min.js')
                ->addJs('assets/admin/global/plugins/jquery-validation/js/jquery.validate.min.js')
                ->addJs('assets/admin/global/plugins/jquery-validation/js/additional-methods.min.js')
                ->addJs('assets/admin/global/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js')
                //<!-- END PAGE LEVEL PLUGINS -->
                ->addJs('assets/admin/global/scripts/app.min.js')
                ->addJs('assets/admin/pages/scripts/form-input-mask.js')
                ->addJs('assets/admin/layouts/layout/scripts/layout.min.js')
                ->addJs('assets/admin/layouts/layout/scripts/demo.min.js')
                ->addJs('assets/admin/layouts/global/scripts/quick-sidebar.min.js');
        
        //create active for view on side bar menus
        $this->view->setVar('setActive', $this->component->helper);
    }
    
    public function __dataTableJsCss(){
        $this->assets->collection('headers')->addCss(
                'assets/js/datatables/datatables.css');
        $this->assets->collection('footers')->addJs(
                'assets/js/datatables/jquery.dataTables.js');
    }
    
    protected function __crossOriginPolicy(){
        $response   = new Phalcon\Http\Response();
        $response->setHeader('Access-Control-Allow-Origin', '*');
        $response->setHeader('Access-Control-Allow-Headers', 'X-Requested-With');
        $response->setHeader('Access-Control-Allow-Headers', 'Authorization');
        $response->setHeader('Access-Control-Allow-Methods', 'GET, POST');
        $response->sendHeaders();
    }


    protected function __dataTableFlow($builder){
        if($this->request->isAjax()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromBuilder($builder)->sendResponse();
        }
    }
    
    protected function __dataTable($builder){
        if($this->request->isGet() || $this->request->isPost()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromBuilder($builder)->sendResponse();
        }
    }
    
    protected function __dataTableArray($builder){
        if($this->request->isAjax()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromArray($builder)->sendResponse();
        }
    }
    
    public function __setActiveLink($string=''){
        $urlStringArray = preg_split("/\//",$_SERVER['REQUEST_URI']);
        $currentNameCtr = empty($string) ? $this->dispatcher->getControllerName() : $string;
        return in_array($currentNameCtr, $urlStringArray) ? 'active' : '';
    }
    
    //This method should be used for associative array
    /**
     * @param type $array
     * @return type array;
     */
    public function __buildRequest($array = array()){
        if($this->request->isPost()){
            $_POST   = $this->request->getPost() + $array;
            return $getPost     = $this->request->getPost();
        }
        else{
            $_GET   = $this->request->getQuery() + $array;
            return $getQuery    = $this->request->getQuery();
        }
    }
    
    //Get Array Conditions to replace post or get Query
    //Note that the index 0 returned is array and 1 is strings
    //Use like this $getWhatever = $this->__getArrayCon($array);
    protected function __getArrayCon(array $array){
        $strings = '';
        $results = array();
        foreach($array as $key => $value){
            $results[$key] = $value;
            $strings .= $key.' = :'.$key.': AND ';
        }
        return array(
            $results, substr($strings,0,-4)
        );
    }
    
    //Remove empty getPost() | getQuery() request
    protected function __getPostRemoveEmpty(){
        if($this->request->isPost()){
            foreach($this->request->getPost() as $key => $value){
                if(empty($value) || is_null($value)){
                    unset($_POST[$key]);
                }
            }
        }
        else{
            foreach($this->request->getQuery() as $key => $value){
                if(empty($value) || is_null($value)){
                    unset($_GET[$key]);
                }
            }
        }
    }
    
    //This method create a binding value based
    //Empty post remooved from the getPost() returned
    protected function __bindAfterRemoveEmpty($type='post'){
        $results = array();
        switch ($type) {
            case 'post':
                foreach($this->request->getPost() as $key => $value){
                    $results[$key] = $value;
                }
                return $results;
                break;
                
            case 'get':
                foreach($this->request->getQuery() as $key => $value){
                    if($key !== '_url'){
                        $results[$key] = $value;
                    }
                }
                return $results;
                break;
        }
    }
    
    //This method creates queries of values for binding
    protected function __conditionsRemoveEmpty($type='post'){
        $strings = '';
        switch ($type) {
            case 'post':
                foreach($this->request->getPost() as $key => $value){
                    $strings .= $key.' = :'.$key.': AND ';
                }
                return substr($strings,0,-4);
                break;
                
            case 'get':
                foreach($this->request->getQuery() as $key => $value){
                    if($key !== '_url'){
                        $strings .= $key.' = :'.$key.': AND ';
                    }
                }
                return substr($strings,0,-4);
                break;
        }
    }
    
    /**
     * @return String
    //if session has cart_item
    */
    public function __getSubTotal(){
        $total  = array();
        if($this->session->has('cart_item') || isset($_SESSION['cart_item'])){
            foreach($this->session->get('cart_item') as $keys=>$values){
                $total[]    =           $values['qty'] * $values['price'];
            }
        }
        return array_sum($total);
    }
    
    //This method is for this query construction
    private function __locateString(){
        return $this->session->has('strLocation') ? 
                '?strLocation='.$this->session->get('strLocation'):'';
    }
}
