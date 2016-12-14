{% extends "templates/base.volt" %}

{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}
<div class="row">
				<div class="col-lg-3 col-lg-pull-6 col-md-6 col-sm-6">
					<section class="box-typical">
						<div class="profile-card">
							<div class="profile-card-photo">
								<img src="img/photo-220-1.jpg" alt=""/>
							</div>
							<div class="profile-card-name">Sarah Sanchez</div>
							<div class="profile-card-status">Company Founder</div>
							<div class="profile-card-location">Greater Seattle Area</div>
							<button type="button" class="btn btn-rounded">Follow</button>
							<div class="btn-group">
								<button type="button"
										class="btn btn-rounded btn-primary-outline dropdown-toggle"
										data-toggle="dropdown"
										aria-haspopup="true"
										aria-expanded="false">
									Connect
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-home"></span>Quant and Verbal</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-cart"></span>Real Gmat Test</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-speed"></span>Prep Official App</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-users"></span>CATprer Test</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-comments"></span>Third Party Test</a>
								</div>
							</div>
						</div><!--.profile-card-->

						<div class="profile-statistic tbl">
							<div class="tbl-row">
								<div class="tbl-cell">
									<b>200</b>
									Connections
								</div>
								<div class="tbl-cell">
									<b>1.9M</b>
									Followers
								</div>
							</div>
						</div>

						<ul class="profile-links-list">
							<li class="nowrap">
								<i class="font-icon font-icon-earth-bordered"></i>
								<a href="#">example.com</a>
							</li>
							<li class="nowrap">
								<i class="font-icon font-icon-fb-fill"></i>
								<a href="#">facebook.com/example</a>
							</li>
							<li class="nowrap">
								<i class="font-icon font-icon-vk-fill"></i>
								<a href="#">vk.com/example</a>
							</li>
							<li class="nowrap">
								<i class="font-icon font-icon-in-fill"></i>
								<a href="#">linked.in/example</a>
							</li>
							<li class="nowrap">
								<i class="font-icon font-icon-tw-fill"></i>
								<a href="#">twitter.com/example</a>
							</li>
							<li class="divider"></li>
							<li>
								<i class="font-icon font-icon-pdf-fill"></i>
								<a href="#">Export page as PDF</a>
							</li>
						</ul>
					</section><!--.box-typical-->

					
				</div><!--.col- -->

{{this.getContent()}}
{% endblock %}
