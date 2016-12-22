<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Models;

/**
 * Description of Studentfour
 *
 * @author Theophilus
 */
class Studentfour extends BaseModel{
    //put your code here
    
    public function beforeValidationOnCreate(){
        $this->register_id  = $this->getDI()->get('session')->get('auth')['register_id'];
    }
}
