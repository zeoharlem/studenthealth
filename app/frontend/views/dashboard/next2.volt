{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}

				<div class="col-lg-8 col-lg-push-3 col-md-12">
					{{flash.output()}}

					<section class="card">
                                            <div class="card-block">
                                                <form  method="post">
                                                    <h5 class="with-border m-t-lg">PAGE 3</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Do you currently use tobacco products such as cigarettes, snuff etc?
in a hospital ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="tobacco_products" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="tobacco_products" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Do you have someone at home/school who smokes when you are present?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="smoker" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="smoker" id="option2" autocomplete="off" checked value="no"> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Do you currently consume any alcohol?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="alcohol" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="alcohol" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">If no, have you ever consumed alcohol in any form ?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="consumed_alcohol" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="consumed_alcohol" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">During the past 1 month, other than your regular activity, did you participate in any physical activities or
exercises such as jogging, tennis, golf, gardening or walking for exercise?</label>
                                                        <div class="col-sm-4">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="physical_activity" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="physical_activity" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                    
                                                    <h5>In a typical week, do you eat/drink the following?</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-6 form-control-label">Fruits</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="fruits" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="fruits" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="fruits_nof">
                                                                <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Uncooked vegetables e.g carrots, cabbage</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="vegetable" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="vegetable" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="vegetable_nof">
                                                                <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Cooked vegetables</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="cooked_vegetables" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="cooked_vegetables" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="cooked_vegetables_nof">
                                                                <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Pastries</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="pastries" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="pastries" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="pastries_nof">
                                                                <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Fried foods</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn ">
                                                                            <input type="radio" name="fried_foods" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="fried_foods" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="fried_food_nof">
                                                            <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Soft drinks</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn">
                                                                            <input type="radio" name="soft_drink" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="soft_drink" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="soft_drink_nof">
                                                            <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                        <label class="col-sm-6 form-control-label">Red meat e.g beef</label>
                                                        <div class="col-sm-2">
                                                            <div class="btn-group" data-toggle="buttons">
                                                                    <label class="btn ">
                                                                            <input type="radio" name="red_meat" id="option1" autocomplete="off" value="yes"> Yes
                                                                    </label>
                                                                    <label class="btn active">
                                                                            <input type="radio" name="red_meat" id="option2" autocomplete="off" value="no" checked> No
                                                                    </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <select class="bootstrap-select bootstrap-select-arrow" name="red_meat_nof">
                                                                <option>Number of Times</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    
                                                
                                            </div>
                                            <button type="reset" class="btn btn-inline btn-success">PREVIOUS</button>
                                            <button type="submit" class="btn btn-inline btn-primary">SUBMIT</button>
                                             </form><!--.box-typical-->
                                        </section>

					
				</div><!--.col- -->

				
			</div><!--.row-->

{% endblock %}