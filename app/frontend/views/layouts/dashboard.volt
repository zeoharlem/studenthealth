{% extends "templates/base.volt" %}

{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}
<h1 class="page-title"> <strong>DASHBOARD VIEW</strong>
    <small></small>
</h1>

<div class="portlet light portlet-fit bordered">
<div class="portlet-title">
    <div class="caption">
        <i class="icon-microphone font-dark hide"></i>
        <span class="caption-subject font-dark"> Welcome</span>
        
    </div>
    
</div>
<div class="portlet-body">
    <div class="row">
        <div class="col-md-4">
            <div class="mt-widget-2">
                <div class="mt-head" style="background-image: url(../assets/admin/pages/img/background/32.jpg);">
                    <div class="mt-head-label">
                        <button type="button" class="btn btn-success">{{session.get('auth')['firstname']}}</button>
                    </div>
                    <div class="mt-head-user">
                        <div class="mt-head-user-img">
                            <img src="{{url('assets/main/uploads/'~dataImage.image_url)}}"> </div>
                        <div class="mt-head-user-info">
                            <span class="mt-user-name">{{session.get('auth')['email']}}</span>
                            
                        </div>
                    </div>
                </div>
                <div class="mt-body">
                    <h3 class="mt-body-title"> {{session.get('auth')['fullname'] | capitalize}} </h3>
                    <p class="mt-body-description"> {{dataImage.register.address}} </p>
                    <ul class="mt-body-stats">
                        <li class="font-yellow">
                            <i class="fa fa-phone"></i> {{session.get('auth')['phonenumber']}}</li>
                        
                        <li class="font-red">
                            <i class="  icon-bubbles"></i> {{session.get('jambregno')}}</li>
                    </ul>
                    <div class="mt-body-actions">
                        <div class="btn-group btn-group btn-group-justified">
                            <a href="{{url('dashboard/edit')}}" class="btn btn-primary">
                                <i class="icon-pencil"></i> Edit Profile</a>
                            <a href="{{url('dashboard/change')}}" class="btn btn-warning">
                                <i class="fa fa-database"></i> Change Password </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            {% if dataImage.studentone %}
            <div class="portlet light portlet-fit bordered">
                <div class="portlet-title">
                    <div class="caption">
                        <i class=" icon-layers font-green"></i>
                        <span class="caption-subject font-green bold uppercase">What you need to do</span>
                        <div class="caption-desc font-grey-cascade"> Please Kindly follow the instructions below so as to get <pre class="mt-code">maximum results</pre> </div>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="mt-element-list">
                        <div class="mt-list-head list-news font-white bg-blue">
                            <div class="list-head-title-container">
                                <span class="badge badge-primary pull-right">2</span>
                                <h3 class="list-title">Status Instructions</h3>
                            </div>
                        </div>
                        <div class="mt-list-container list-news">
                            <ul>
                                <li class="mt-list-item">
                                    <div class="list-icon-container">
                                        <a href="javascript:;">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                    <div class="list-datetime bold uppercase font-green"> <?php echo date('F d, Y'); ?> </div>
                                    <div class="list-item-content">
                                        <h3 class="uppercase">
                                            <a href="javascript:;">Chest Xray</a>
                                        </h3>
                                        <p>Proceed to do Your Chest Xray at -------- and take the result to JAJA to see the vetting Officer</p>
                                    </div>
                                </li>
                                <li class="mt-list-item">
                                    <div class="list-icon-container">
                                        <a href="javascript:;">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                    <div class="list-datetime bold uppercase font-green"> <?php echo date('F d, Y'); ?> </div>
                                    <div class="list-item-content">
                                        <h3 class="uppercase">
                                            <a href="javascript:;">Urinalysis </a>
                                        </h3>
                                        <p>Proceed to do your Urinalysis at JAJA Clinic.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            {% endif %}
        </div>
    </div>
</div>
</div>

{% endblock %}
