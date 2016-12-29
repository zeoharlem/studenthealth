{% extends "templates/base.volt" %}

{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}
<div class="profile-header-photo">
			<div class="profile-header-photo-in">
				<div class="tbl-cell">
					<div class="info-block">
						<div class="container-fluid">
							<div class="row">
								<div class="col-xl-9 col-xl-offset-3 col-lg-8 col-lg-offset-4 col-md-offset-0">
									<div class="tbl info-tbl">
										<div class="tbl-row">
											<div class="tbl-cell">
												<p class="title">Dan Counsell</p>
												<p>Company Founder</p>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<a href="{{url('dashboard/')}}" class="btn btn-primary">DASHBOARD</a>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<a href="#" class="btn btn-danger">EDIT STAGES</a>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<a href="#" class="btn btn-success">STATUS VIEW</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="change-cover">
				<i class="font-icon font-icon-picture-double"></i>
				Change cover
				<input type="file"/>
			</button>
		</div><!--.profile-header-photo-->

		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-4">
					<aside class="profile-side">
						<section class="box-typical profile-side-user">
							<button type="button" class="avatar-preview avatar-preview-128">
								<img src="{{url('assets/main/uploads/'~dataStage.imagecaption.image_url)}}" alt=""/>
								<span class="update">
									<i class="font-icon font-icon-picture-double"></i>
									Update photo
								</span>
								<input type="file"/>
							</button>
							
							<div class="btn-group">
								
							</div>
							<div class="bottom-txt">{{session.get('auth')['fullname'] | capitalize}}</div>
						</section>

						

						<section class="box-typical">
							<header class="box-typical-header-sm bordered">Info</header>
							<div class="box-typical-inner">
								<p class="line-with-icon">
									<i class="font-icon font-icon-pin-2"></i>
									{{dataStage.register.email}}
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-phone"></i>
									{{dataStage.register.phonenumber}}
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-case-3"></i>
									{{dataStage.register.address}}
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-learn"></i>
									{{dataStage.department}}
								</p>
								
							</div>
						</section>

					</aside><!--.profile-side-->
				</div>

				<div class="col-xl-9 col-lg-8">
					<section class="tabs-section">
						{{ partial("partials/headerview") }}

						<div class="tab-content no-styled profile-tabs">
                                                    {{this.getContent()}}
						</div><!--.tab-content-->
					</section><!--.tabs-section-->
				</div>
			</div><!--.row-->
		</div><!--.container-fluid-->
{% endblock %}
