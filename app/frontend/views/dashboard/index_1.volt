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

				<div class="col-lg-8 col-lg-push-3 col-md-12">
					<form class="box-typical">
						<input type="text" class="write-something" placeholder="Write Something..."/>
						<div class="box-typical-footer">
							<div class="tbl">
								<div class="tbl-row">
									<div class="tbl-cell">
										<button type="button" class="btn-icon">
											<i class="font-icon font-icon-earth"></i>
										</button>
										<button type="button" class="btn-icon">
											<i class="font-icon font-icon-picture"></i>
										</button>
										<button type="button" class="btn-icon">
											<i class="font-icon font-icon-calend"></i>
										</button>
										<button type="button" class="btn-icon">
											<i class="font-icon font-icon-video-fill"></i>
										</button>
									</div>
									<div class="tbl-cell tbl-cell-action">
										<button type="submit" class="btn btn-rounded">Send</button>
									</div>
								</div>
							</div>
						</div>
					</form><!--.box-typical-->

					<section class="card">
                                            <div class="card-block">
                                                <form class="box-typical">
                                                    <h5 class="with-border m-t-lg">PAGE 1</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Have you ever been admitted as an inpatient
in a hospital ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn active">
                                                                            <input type="radio" name="options" id="option1" autocomplete="off" checked> Yes
                                                                    </label>
                                                                    <label class="btn">
                                                                            <input type="radio" name="options" id="option2" autocomplete="off"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">History of previous Surgeries/Operations ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn active">
                                                                            <input type="radio" name="options" id="option1" autocomplete="off" checked> Yes
                                                                    </label>
                                                                    <label class="btn">
                                                                            <input type="radio" name="options" id="option2" autocomplete="off"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Are you on any medication(s)?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn active">
                                                                            <input type="radio" name="options" id="option1" autocomplete="off" checked> Yes
                                                                    </label>
                                                                    <label class="btn">
                                                                            <input type="radio" name="options" id="option2" autocomplete="off"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <h4>Do you suffer from or have you suffered from any of the following?</h4>
                                                        <label class="col-sm-6 form-control-label">Are you on any medication(s)?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn active">
                                                                            <input type="radio" name="options" id="option1" autocomplete="off" checked> Yes
                                                                    </label>
                                                                    <label class="btn">
                                                                            <input type="radio" name="options" id="option2" autocomplete="off"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                </form><!--.box-typical-->
                                            </div>
                                            <button type="button" class="btn btn-inline btn-primary">NEXT PAGE</button>
                                            <button type="reset" class="btn btn-inline btn-success">RESET</button>
                                        </section>

					
				</div><!--.col- -->

				
			</div><!--.row-->

{% endblock %}