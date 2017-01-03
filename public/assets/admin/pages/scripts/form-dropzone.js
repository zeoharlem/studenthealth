var FormDropzone = function () {


    return {
        //main function to initiate the module
        init: function () {  

            Dropzone.options.myDropzone = {
                dictDefaultMessage: "",
                maxFilesize: 1,
                init: function() {
                    this.on("addedfile", function(file) {
                        // Create the remove button
                        var removeButton = Dropzone.createElement("<a href='javascript:;'' class='btn red btn-sm btn-block'>Remove</a>");
                        
                        // Capture the Dropzone instance as closure.
                        var _this = this;

                        // Listen to the click event
                        removeButton.addEventListener("click", function(e) {
                          // Make sure the button click doesn't submit the form:
                          e.preventDefault();
                          e.stopPropagation();

                          // Remove the file preview.
                          _this.removeFile(file);
                          // If you want to the delete the file on the server as well,
                          // you can do the AJAX request here.
                          $.post('http://localhost/studenthealth/dashboard/removeimg',{task:true},function(data){
                              var stringJson    = $.parseJSON(JSON.stringify(data));
                              if(stringJson.status == 'OK'){
                                  window.location.reload();
                              }
                          });
                        });
                        // Add the button to the file preview element.
                        file.previewElement.appendChild(removeButton);
                    });
                    
                    this.on("complete", function(file){
                        window.location.reload();
                    });
                }            
            }
        }
    };
}();

jQuery(document).ready(function() {    
   FormDropzone.init();
});