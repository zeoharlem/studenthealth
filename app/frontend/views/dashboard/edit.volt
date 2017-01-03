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
                                            <span class="caption-subject bold"> Profile Inputs</span>
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body form">
                                        <form role="form" method="POST">
                                            <div class="form-body">
                                                <div class="form-group form-md-line-input">
                                                    <input type="text" name="firstname" value="{{profile.firstname}}" class="form-control" id="form_control_1" placeholder="Enter your name">
                                                    <label for="form_control_1">First Name</label>
                                                    <span class="help-block">Some help goes here...</span>
                                                </div>
                                                <div class="form-group form-md-line-input">
                                                    <input type="text" name="lastname" value="{{profile.lastname}}" class="form-control" id="form_control_1" placeholder="Enter your email">
                                                    <label for="form_control_1">Surname</label>
                                                    <span class="help-block">Some help goes here...</span>
                                                </div>
                                                
                                                <div class="form-group form-md-line-input has-info">
                                                    <input type="text" class="form-control" value="{{profile.email}}" name="email" id="form_control_1" placeholder="Email Address">
                                                    <label for="form_control_1">Email</label>
                                                </div>

                                                <div class="form-group form-md-line-input has-info">
                                                    <input type="text" class="form-control" value="{{profile.phonenumber}}" name="phonenumber" id="form_control_1" placeholder="Phone Number">
                                                    <label for="form_control_1">Phone Number</label>
                                                </div>
                                                
                                                <div class="form-group form-md-line-input has-info">
                                                    <input type="text" class="form-control" value="{{profile.address}}" name="address" id="form_control_1" placeholder="Address">
                                                    <label for="form_control_1">Address</label>
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