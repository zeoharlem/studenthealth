<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Models;

/**
 * Description of Studentone
 *
 * @author Theophilus
 */
class Studentone extends BaseModel{
    //put your code here
    public function initialize(){
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Register",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Studenttwo",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Studentthree",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Studentfour",
                'register_id',
                array('reusable' => true));
        
        $this->belongsTo(
                'register_id',
                "Multiple\\Frontend\\Models\\Imagecaption",
                'register_id',
                array('reusable' => true));
    }
    
    public function getRegister(){
        return $this->getRelated('Multiple\Frontend\Models\Register');
    }
    
    public function getStudenttwo(){
        return $this->getRelated('Multiple\Frontend\Models\Studenttwo');
    }
    
    public function getStudentthree(){
        return $this->getRelated('Multiple\Frontend\Models\Studentthree');
    }
    
    public function getStudentfour(){
        return $this->getRelated('Multiple\Frontend\Models\Studentfour');
    }
    
    public function getImagecaption(){
        return $this->getRelated('Multiple\Frontend\Models\Imagecaption');
    }
}
