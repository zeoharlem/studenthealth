<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <?= $this->tag->gettitle() ?>  
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="keywords" content="Health">
        <meta name="author" content="Health">
        
        <?= $this->assets->outputCss('login') ?>
            
         
        
                <!-- Extra CSS Libraries End -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
   
    </head>
<body class=""><div id="wrapper">    <header>
        <div id="topbar">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-xs-6">
			<span class="hidden-sm hidden-xs"><i class="icon-location4"></i>1375 RICHMOND AVE. MN </span><span class="vertical-space"></span> <i class="icon-phone4"></i>1-800-666-666
			</div>
			<div class="col-sm-6 col-xs-6 text-right">
				<div class="btn-group social-links hidden-sm hidden-xs">	
					<a href="javascript:;" class="btn btn-link"><i class="icon-facebook4"></i></a>
					<a href="javascript:;" class="btn btn-link"><i class="icon-twitter4"></i></a>
				</div>
				<a href="<?= $this->url->get('index/') ?>" class="login-button">LOGIN</a><a href="<?= $this->url->get('register/') ?>" class="signup-button">SIGN UP</a>
			</div>
		</div>
		<div class="top-divider"></div>
	</div>
</div>            <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navigation">
                    <span class="icon-navicon"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img src="assets/img/logo.png" data-dark-src="<?= $this->url->get('assets/main/img/logo_dark.png') ?>" alt="University of Ibadan" class="logo">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main-navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="about.html">ABOUT</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-->
    </nav>        <section class="main-slider fullsize" data-stellar-background-ratio="0.5" style="background-image: url('./assets/main/images/headers/signup-login.jpg')">
	<div class="slider-caption">
		
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="alert" id="alert_system"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4" id="jamb_form">
                <form class="form-signin" role="form" method="post" id="jamb_form_child">
                <h2 class="form-signin-heading">JAMB NUMBER</h2>
                <?= $this->flash->output() ?>
                <div class="form-group">
                    <input type="text" name="jambnumber" class="form-control input-lg" placeholder="Enter your JAMB Registration Number" required autofocus>
                </div>
                
                <button class="btn btn-lg btn-primary btn-block" id="jamb_form_btn" type="submit">SUBMIT</button>
              </form>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4 hide" id="login_form">
                <form class="form-signin" role="form" method="post" action="<?= $this->url->get('login/') ?>" id="login_form_child">
                <h2 class="form-signin-heading">LOGIN</h2>
                <div class="form-group">
                    <input type="email" name="email" class="form-control input-lg" placeholder="E-mail address" required autofocus>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control input-lg" placeholder="Password" required>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button><br>
                <a href="<?= $this->url->get('register/') ?>" class="btn btn-block btn-warning btn-lg">Sign up</a>
              </form>
            </div>
        </div>
      </div>	</div>
</section>    </header>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <a href="#"> 
                            <img src="assets/img/logo.png" class="footer-logo"> 
                        </a>
                        <h5>Designing your future...</h5>
                        
                    </div>


                    <div class="col-sm-4">
                        <h4>CONTACT US</h4>
                        <ul class="list-unstyled company-info">
                            <li><i class="icon-map-marker"></i> 1375 Richmond Avenue<br>Minneapolis, MN 90017</li>
                            <li><i class="icon-phone3"></i> 1-800-666-666</li>
                            <li><i class="icon-envelope"></i> <a href="mailto:contact@ui.edu">contact@ui.edu</a></li>
                            <li><i class="icon-alarm2"></i> Monday - Friday: <strong>8:00 am - 7:00 pm</strong><br>Saturday - Sunday: <strong>Closed</strong></li>
                        </ul>
                    </div>
                    
                    <div class="col-sm-4 hidden-xs">
                        <h4>SOCIAL STREAM</h4>
                        <ul class="list-unstyled social-stream">
                            <li><i class="icon-twitter4"></i> We just released an awesome frontend template for our coco template. Come on and check it out! - <a href="http://goo.gl/ylVWzR">http://goo.gl/ylVWzR</a><br><span class="text-default text-sm">Oct 20</span></li>
                            <li><i class="icon-twitter4"></i> Our template is going popular. Don't miss it!<br><span class="text-default text-sm">Oct 19</span></li>
                            <li><i class="icon-facebook4"></i> World is becoming a crazy place. Try to avoid toxic materials.<br><span class="text-default text-sm">Oct 19</span></li>
                        </ul>
                    </div>
                </div>
                <hr>
                <div class="row"> 
                    <div class="col-sm-6">
                        <p>Copyright &copy; 2016 by <a href="#" target="_blank">CreativeMeshKernel</a></p> 
                    </div>
                    <div class="col-sm-6 text-right">
                        <div class="social-links">
                            <a href="javascript:;">
                                <i class="icon-twitter4"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="icon-facebook4"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="icon-instagram3"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="icon-vimeo3"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="icon-tumblr4"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="icon-googleplus6"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <a class="tothetop" href="javascript:;"><i class="icon-angle-up"></i></a>
    </div>

    <script>
        var resizefunc = [];
    </script>
    <?= $this->assets->outputJs('loginfooters') ?>
    </body>
</html>