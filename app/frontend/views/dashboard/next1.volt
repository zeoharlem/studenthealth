{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}

				<div class="col-lg-8 col-lg-push-3 col-md-12">
					{{flash.output()}}

					<section class="card">
                                            <div class="card-block">
                                                <form method="post">
                                                    <h5 class="with-border m-t-lg">PAGE 2</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Have you ever been admitted as an inpatient
in a hospital ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="admitted_hosptial" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="admitted_hosptial" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">History of previous Surgeries/Operations ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="previous_surgery" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="previous_surgery" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Are you on any medication(s)?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="on_medications" id="on_medications1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="on_medications" id="on_medications2" autocomplete="off" value="no" checked> No
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
                                                                    <label class="btn">
                                                                            <input type="radio" name="tuberculosis" id="option1" autocomplete="off"  value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="tuberculosis" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Asthma</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="asthma" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="asthma" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Peptic Ulcer Disease</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="peptic_ulcer" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="peptic_ulcer" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Sickle Cell Disease</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="sickle_cell" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="sickle_cell" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Allergies</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="allergies" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="allergies" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Diabetes Mellitus</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="diabetes_mellitus" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="diabetes_mellitus" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Hypertension</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="hypertension" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="hypertension" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Seizures/Convulsions</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="convulsions" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="convulsions" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Mental Illness</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="mental_illness" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="mental_illness" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    
                                                    <input name="register_id" value="{{this.session.get('auth')['register_id']}}" type="hidden" />
                                                
                                            </div>
                                            <button type="reset" class="btn btn-inline btn-success">PREVIOUS</button>
                                            <button type="submit" class="btn btn-inline btn-primary">NEXT PAGE</button>
                                             </form><!--.box-typical-->
                                        </section>

					
				</div><!--.col- -->

				
			</div><!--.row-->

{% endblock %}