{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
    <!-- Panel Inline Form -->
      <div class="panel">
        <header class="panel-heading">
          <h3 class="panel-title">
            <strong>Create Category(ies)</strong>
          </h3>
        </header>
        <div class="panel-body">
          <div class="example-wrap">
            <h4 class="example-title">Basic Category Form Without Label</h4>
            <div class="example">
              <form class="form-inline" action="{{url('backend/products/category')}}" method="post">
                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelUsername">Category Name</label>
                  <input type="text" class="form-control" id="inputUnlabelUsername" placeholder="Category Name" autocomplete="off" name="category_name" />
                </div>

                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelPassword">Description</label>
                  <input type="text" class="form-control" name="description" id="inputUnlabelPassword" placeholder="Description of Category" autocomplete="off" />
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-primary btn-outline">Submit Category</button>
                </div>
              </form>
            </div>
            <p>&nbsp;</p>
              <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="exampleCategory">
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Description(s)</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Description(s)</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            <tbody>
            {% for keys, values in categories %}
              <tr>
                <td>{{keys + 1}}</td>
                <td>{{values['category_name']}}</td>
                <td>{{values['description']}}</td>
                <td><div class='btn-group'><button class='btn view' id="{{values['category_id']}}">View</button><button class='btn edit' id="{{values['category_id']}}">Edit</button><button id="{{values['category_id']}}" class='btn delete'>Delete</button></div></td>
              </tr>
              {% endfor %}
            </tbody>
          </table>

            </div>
          </div>
        </div>
      </div>
      <!-- End Panel Inline Form -->

<!-- Modal -->
                  <div class="modal fade" id="editCategoryModal" aria-hidden="false" aria-labelledby="editCategoryModalLabel"
                  role="dialog" tabindex="-1">
                    <div class="modal-dialog">
                      <form class="modal-content" method="post" id="editCategory">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="editCategoryModalLabel">Edit Category</h4>
                        </div>
                        <div class="modal-body">
                          <div class="row">
                            <div class="col-lg-6 form-group">
                              <label>First Name</label>
                              <input type="hidden" class="form-control category_id" name="category_id">
                              <input type="text" class="form-control category_name" name="category_name">
                            </div>
                            
                            <div class="col-lg-12 form-group">
                              <textarea class="form-control description" name="description"></textarea>
                            </div>
                            
                            <div class="col-sm-12 pull-right">
                              <button class="btn btn-primary btn-outline" type="button" id="editcat">Edit Category</button>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                  <!-- End Modal -->
{% endblock %}
