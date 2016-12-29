{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}
<div role="tabpanel" class="tab-pane active" id="tabs-3-tab-1">
        
            <section class="box-typical box-typical-padding">
            {{flash.output()}}
                                                <form method="post" enctype="multipart/form-data">
                                                    
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 form-control-label"><strong>Select Image(400px by 400px)</strong></label>
                                                        <div class="col-sm-6">
                                                            <input type="file" name="filename" class="form-control" />
                                                        </div>
                                                        <div class="col-sm-2"></div>
                                                    </div>
                                                <div class="box-typical-footer">
                                                <div class="tbl">
                                                        <div class="tbl-row">
                                                                <div class="tbl-cell">
                                                                        <div class="tbl-cell">
                                                                            <a href="{{url('dashboard/')}}" type="submit" id="stage-1" class="btn btn-rounded btn-warning">Previous</a>
                                                                        </div>
                                                                </div>
                                                                <div class="tbl-cell tbl-cell-action">
                                                                        <button type="submit" id="stage-1" class="btn btn-rounded">Submit Now</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            
                                             </form><!--.box-typical-->
                                        </section>
			</div><!--.row-->

{% endblock %}