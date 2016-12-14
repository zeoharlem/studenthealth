{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}

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
                                                <form>
                                                    <h5 class="with-border m-t-lg">PAGE 2</h5>
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
                                                    <h5>Do you suffer from or have you suffered from any of the following?</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Tuberculosis</label>
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
                                                        <label class="col-sm-6 form-control-label">Asthma</label>
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