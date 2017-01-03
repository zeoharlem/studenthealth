{% extends "templates/base.volt" %}

{% block head %}
    
{% endblock %}

{% block content %}

<!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-12">
                                <p>&nbsp;</p>
                                <div class="alert alert-danger">To start registration, <strong>upload your passport photograph(300px by 300px)</strong></div>
                                <form action="{{url('dashboard/uploadimg')}}" class="dropzone dropzone-file-area" id="my-dropzone" style="margin-top: 50px;">
                                    <h3 class="sbold btn btn-lg btn-primary">Click within box to Upload Passport Photograph</h3>
                                    <p> Kindly make sure that you are uploading a passport look picture. </p>
                                </form>
                            </div>
                        </div>

{% endblock %}