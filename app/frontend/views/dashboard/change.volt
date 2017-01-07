{% extends "templates/base.volt" %}

{% block head %}
    
{% endblock %}

{% block content %}

<div class="row">
                            <div class="col-md-6 ">
                            <h3>Edit Profile</h3>
                                <!-- BEGIN SAMPLE FORM PORTLET-->
                                {{flash.output()}}
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-red-sunglo">
                                            <i class="icon-settings font-red-sunglo"></i>
                                            <span class="caption-subject bold"> Change Password</span>
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body form">
                                        <form role="form" method="POST">
                                            <div class="form-body">
                                                <div class="form-group form-md-line-input">
                                                    <input type="password" name="oldpassword" class="form-control" id="form_control_1" placeholder="Enter your old password">
                                                    <label for="form_control_1">Old Password</label>
                                                    <span class="help-block">Some help goes here...</span>
                                                </div>
                                            </div>
                                            <div class="form-body">
                                                <div class="form-group form-md-line-input">
                                                    <input type="password" name="password" class="form-control" id="form_control_1" placeholder="Enter your new password">
                                                    <label for="form_control_1">New Password</label>
                                                    <span class="help-block">Some help goes here...</span>
                                                </div>
                                            </div>
                                            <div class="form-actions noborder">
                                                <button type="submit" class="btn blue">Update Now</button>
                                                <button type="reset" class="btn default">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- END SAMPLE FORM PORTLET-->
</div>
</div>
{% endblock %}