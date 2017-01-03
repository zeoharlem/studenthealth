<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Models;

/**
 * Description of Imagecaption
 *
 * @author Theophilus
 */
class Imagecaption extends BaseModel{
    //put your code here
    public function initialize(){
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Studentone",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Register",
                'register_id',
                array('reusable' => true));
        
    }
    
    public function getStudentone(){
        return $this->getRelated('Multiple\Frontend\Models\Studentone');
    }
    
    public function getRegister(){
        return $this->getRelated('Multiple\Frontend\Models\Register');
    }
    
    public function validation(){
        $validator  = new \Phalcon\Validation();
        $validator->add("register_id", new \Phalcon\Validation\Validator\Uniqueness(array(
            "message" => "Student already Existed. Contact Administrator"
        )));
        return $this->validate($validator);
    }
}
