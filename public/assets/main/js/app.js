/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    $('#jamb_form_btn').on('click', function(e){
        e.preventDefault();
        var textForm    = $("input[name='jambnumber']").val();
        
        if(textForm.length > 3 || textForm != ''){
            $(this).text('Please Wait...');
            $.post('http://localhost/studenthealth/jamb',{textForm:textForm}, function(data,textRes,xhr){
                var strinfJSON  = $.parseJSON(JSON.stringify(data));
                if(strinfJSON.status == true && strinfJSON.data.length > 4){
                    $('#jamb_form').remove();
                    $('#login_form').removeClass('hide').fadeIn();
                }
            });
        }
        else{
            $("input[name='jambnumber']").css('border','1px solid #f00');
        }
    })
})