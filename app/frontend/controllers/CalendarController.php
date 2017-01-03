<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of CalendarController
 *
 * @author Theophilus
 */
class CalendarController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Calendar');
        $this->assets->collection('headers')->addCss(
                'assets/admin/global/plugins/fullcalendar/fullcalendar.min.css');
        $this->assets->collection('footers')->addJs(
                'assets/admin/global/plugins/moment.min.js')
                ->addJs('assets/admin/global/plugins/fullcalendar/fullcalendar.min.js')
                ->addJs('assets/admin/apps/scripts/calendar.js');
    }
    
    public function indexAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
