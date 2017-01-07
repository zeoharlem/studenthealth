<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Register
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Models;

use Phalcon\Validation\Validator;

class Register extends BaseModel{
    //put your code here
    public function initialize(){
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Studentone",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Imagecaption",
                'register_id',
                array('reusable' => true));
        
        $this->skipAttributesOnUpdate(array('jamb_reg_no'));
    }
    
    public function beforeValidationOnCreate(){
        $this->role     = "user";
        $this->date_of_registration = new \Phalcon\Db\RawValue('NOW()');
        $this->codename = $this->getDI()->get('component')->helper->makeRandomInts(11);
        $this->jamb_reg_no          = $this->getDI()->get('session')->get('jambregno');
        $this->skipAttributesOnUpdate(array('password'));
    }
    
    public function beforeValidationOnUpdate(){
        
    }
    
    public function getStudentone(){
        return $this->getRelated('Multiple\Frontend\Models\Studentone');
    }
    
    public function getImagecaption(){
        return $this->getRelated('Multiple\Frontend\Models\Imagecaption');
    }
    
    public function validation(){
        $security   = new \Phalcon\Security();
        $validation = new \Phalcon\Validation();
        $validation->add('email', new Validator\Email(array(
            'model'     => $this,
            'message'   => 'Please enter correct email address'
        )));
        
        $validation->add('email', new Validator\Uniqueness(array(
            'model'     => $this,
            'message'   => 'Email address already existed'
        )));
        
//        $validation->add('jamb_reg_no', new Validator\Uniqueness(array(
//            'model'     => $this,
//            'message'   => 'Jamb Registration Number already existed'
//        )));
        
        $this->password = $security->hash($this->password);
        return $this->validate($validation);
    }
}
