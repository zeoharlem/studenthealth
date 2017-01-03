
<!DOCTYPE html>
<html lang="en">


        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="Students Health">
        <meta name="robots" content="all">

        <?= $this->tag->gettitle() ?>
        
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <?= $this->assets->outputCss('headers') ?>
            
        
    <?= $this->assets->outputCss('profile') ?>

        

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="index.html">
                            <img src="../assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN NOTIFICATION DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            
                            <!-- BEGIN INBOX DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-envelope-open"></i>
                                    <span class="badge badge-default"> 0 </span>
                                </a>
                                <!--<ul class="dropdown-menu">
                                    <li class="external">
                                        <h3>You have
                                            <span class="bold">7 New</span> Messages</h3>
                                        <a href="app_inbox.html">view all</a>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="../assets/layouts/layout3/img/avatar2.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Lisa Wong </span>
                                                        <span class="time">Just Now </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="../assets/layouts/layout3/img/avatar3.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Richard Doe </span>
                                                        <span class="time">16 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="../assets/layouts/layout3/img/avatar1.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Bob Nilson </span>
                                                        <span class="time">2 hrs </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="../assets/layouts/layout3/img/avatar2.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Lisa Wong </span>
                                                        <span class="time">40 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed auctor 40% nibh congue nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="../assets/layouts/layout3/img/avatar3.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Richard Doe </span>
                                                        <span class="time">46 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>-->
                            </li>
                            
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="<?= $this->url->get('assets/main/uploads/' . $this->session->get('auth')['dataImage']) ?>" />
                                    <span class="username username-hide-on-mobile"> <?= ucwords($this->session->get('auth')['fullname']) ?> </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="<?= $this->url->get('dashboard/profile') ?>">
                                            <i class="icon-user"></i> My Profile </a>
                                    </li>
                                    
                                    <li class="divider"> </li>
                                    
                                    <li>
                                        <a href="<?= $this->url->get('logout/') ?>">
                                            <i class="icon-key"></i> Sign Out </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-quick-sidebar-toggler">
                                <a href="<?= $this->url->get('logout/') ?>" class="dropdown-toggle">
                                    <i class="icon-logout"></i>
                                </a>
                            </li>
                            <!-- END QUICK SIDEBAR TOGGLER -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            
            
            <?= $this->partial('partials/menu') ?>
            
            <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="<?= $this->url->get('/') ?>">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                
                            </ul>
                            <div class="page-toolbar">
                                <div class="btn-group pull-right">
                                    <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown"> Actions
                                        <i class="fa fa-angle-down"></i>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li>
                                            <a href="#">
                                                <i class="icon-bell"></i> Notifications</a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon-shield"></i> Support | Need Help?</a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon-user"></i> Health Complains</a>
                                        </li>
                                        <li class="divider"> </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon-bag"></i> Set Appointment</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- END PAGE BAR -->

                        
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
                        <button type="button" class="btn btn-success"><?= $this->session->get('auth')['firstname'] ?></button>
                    </div>
                    <div class="mt-head-user">
                        <div class="mt-head-user-img">
                            <img src="<?= $this->url->get('assets/main/uploads/' . $dataImage->image_url) ?>"> </div>
                        <div class="mt-head-user-info">
                            <span class="mt-user-name"><?= $this->session->get('auth')['email'] ?></span>
                            
                        </div>
                    </div>
                </div>
                <div class="mt-body">
                    <h3 class="mt-body-title"> <?= ucwords($this->session->get('auth')['fullname']) ?> </h3>
                    <p class="mt-body-description"> <?= $dataImage->register->address ?> </p>
                    <ul class="mt-body-stats">
                        <li class="font-yellow">
                            <i class="fa fa-phone"></i> <?= $this->session->get('auth')['phonenumber'] ?></li>
                        
                        <li class="font-red">
                            <i class="  icon-bubbles"></i> <?= $this->session->get('jambregno') ?></li>
                    </ul>
                    <div class="mt-body-actions">
                        <div class="btn-group btn-group btn-group-justified">
                            <a href="<?= $this->url->get('dashboard/edit') ?>" class="btn btn-primary">
                                <i class="icon-pencil"></i> Edit Profile</a>
                            <a href="<?= $this->url->get('dashboard/change') ?>" class="btn btn-warning">
                                <i class="fa fa-database"></i> Change Password </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <?php if ($dataImage->studentone) { ?>
            <strong>Instructions</strong><br/>
            <?php } ?>
        </div>
    </div>
</div>
</div>


                        
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                
                </div>
            <!-- END CONTAINER -->
            
            <?= $this->partial('partials/footer') ?>
            </div>

<?= $this->assets->outputJs('footers') ?>

</body>
</html>