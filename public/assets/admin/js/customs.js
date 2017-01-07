/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function(){
    $(document).ready(function(){
        //window.alert('sdfsdf');
        $('.immunized').click(function(e){
            //e.preventDefault();
            var thisRadioBtn    = $(this);
            if($('.immunized').is(':checked')){
                if(thisRadioBtn.val() === 'yes'){
                    thisRadioBtn.parents(".md-radio-inline")
                            .siblings(".col-md-2").removeClass("hide");
                }
                else{
                    thisRadioBtn.parents(".md-radio-inline")
                            .siblings(".col-md-2").addClass("hide");
                }
            }
        })
    });
})();