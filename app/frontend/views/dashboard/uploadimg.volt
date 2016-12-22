{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}

				<div class="col-lg-8 col-lg-push-3 col-md-12">
					{{flash.output()}}

					<section class="card">
                                            <div class="card-block">
                                                <form method="post">
                                                    <h5 class="with-border m-t-lg">PAGE 4</h5>
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 form-control-label"><strong>Select Image(400 by 400)</strong></label>
                                                        <div class="col-sm-6">
                                                            <input type="file" class="form-control"  />
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                
                                            </div>
                                            <button type="reset" class="btn btn-inline btn-success">PREVIOUS</button>
                                            <button type="submit" class="btn btn-inline btn-primary">UPLOAD IMAGE</button>
                                             </form><!--.box-typical-->
                                        </section>

					
				</div><!--.col- -->

				
			</div><!--.row-->

{% endblock %}