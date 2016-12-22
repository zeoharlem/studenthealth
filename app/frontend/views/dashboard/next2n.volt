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
                                                        <label class="col-sm-6 form-control-label">If the answer to any of the above is Yes, please give details with dates</label>
                                                        <div class="col-sm-4">
                                                            <textarea class="form-control" name="illness_details" placeholder="Type details of the illness"></textarea>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <div class="col-lg-6">
                                                            <fieldset class="form-group">
                                                                    <label class="form-label" for="exampleInputEmail1">Do you know your genotype?</label>
                                                                    <input type="text" name="genotype" class="form-control" id="exampleInputEmail1" placeholder="Enter your genotype">
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <fieldset class="form-group">
                                                                    <label class="form-label" for="exampleInputEmail1">Do you know your blood group?</label>
                                                                    <input type="text" name="blood_group" class="form-control" id="exampleInputEmail1" placeholder="Enter your blood group">
                                                            </fieldset>
                                                        </div>
                                                    </div>
                                                    
                                                    <h4>Has any of your family members suffered from any of the following?</h4>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Tuberculosis</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="family_tuberculosis" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="family_tuberculosis" id="option2" autocomplete="off" checked value="no"> No
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
                                                                            <input type="radio" name="family_hypertension" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="family_hypertension" id="option2" autocomplete="off" value="no" checked> No
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
                                                                            <input type="radio" name="family_seizures" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="family_seizures" id="option2" autocomplete="off" value="no" checked> No
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
                                                                            <input type="radio" name="family_diabetes" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="family_diabetes" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Mental illness</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="family_mental" id="option1" autocomplete="off"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="family_mental" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Do you react to any drug(s) Yes/No</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="react_to_drugs" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="react_to_drugs" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <h4>Have you been immunized against the following?</h4>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Hepatitis B</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="hepatitis" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="hepatitis" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Yellow Fever</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="yellow_fever" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="yellow_fever" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Tetanus</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="tetanus" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="tetanus" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">C.S.M</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="csm" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="csm" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                
                                            </div>
                                            <button type="reset" class="btn btn-inline btn-success">PREVIOUS</button>
                                            <button type="submit" class="btn btn-inline btn-primary">NEXT PAGE</button>
                                             </form><!--.box-typical-->
                                        </section>

					
				</div><!--.col- -->

				
			</div><!--.row-->

{% endblock %}