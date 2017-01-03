{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}

{% block content %}

<!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Calendar</h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light portlet-fit bordered calendar">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green sbold uppercase">Hospital Calendar</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-12">
                                                <!-- BEGIN DRAGGABLE EVENTS PORTLET
                                                <h3 class="event-form-title margin-bottom-20">Draggable Events</h3>
                                                <div id="external-events">
                                                    <form class="inline-form">
                                                        <input type="text" value="" class="form-control" placeholder="Event Title..." id="event_title" />
                                                        <br/>
                                                        <a href="javascript:;" id="event_add" class="btn green"> Add Event </a>
                                                    </form>
                                                    <hr/>
                                                    <div id="event_box" class="margin-bottom-10"></div>
                                                    
                                                    <hr class="visible-xs" /> </div>
                                                -->
                                                Coming Soon
                                            </div> 
                                            <div class="col-md-9 col-sm-12">
                                                <div id="calendar" class="has-toolbar"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
{% endblock %}