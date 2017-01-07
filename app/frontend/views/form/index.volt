{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}

{% block content %}
    <h1 class="page-title"> <strong>STUDENT VITALS</strong>
        
    </h1>
    
    <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="portlet light bordered" id="form_wizard_1">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-red"></i>
                                            <span class="caption-subject font-red bold uppercase">
                                                <span class="step-title"> Step 1 of 6 </span>
                                            </span>
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body form">
                                        <form class="form-horizontal" action="#" id="submit_form" method="POST">
                                            <div class="form-wizard">
                                                <div class="form-body">
                                                    <ul class="nav nav-pills nav-justified steps">
                                                        <li>
                                                            <a href="#tab1" data-toggle="tab" class="step">
                                                                <span class="number"> 1 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Step 1 </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab2" data-toggle="tab" class="step">
                                                                <span class="number"> 2 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Step 2 </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab3" data-toggle="tab" class="step active">
                                                                <span class="number"> 3 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Step 3 </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab4" data-toggle="tab" class="step">
                                                                <span class="number"> 4 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Step 4 </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab5" data-toggle="tab" class="step">
                                                                <span class="number"> 5 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Step 5 </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab6" data-toggle="tab" class="step">
                                                                <span class="number"> 6 </span>
                                                                <span class="desc">
                                                                    <i class="fa fa-check"></i> Finish </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div id="bar" class="progress progress-striped" role="progressbar">
                                                        <div class="progress-bar progress-bar-success"> </div>
                                                    </div>
                                                    <div class="tab-content">
                                                        <div class="alert alert-danger display-none">
                                                            <button class="close" data-dismiss="alert"></button> You have some form errors. Please check below. </div>
                                                        <div class="alert alert-success display-none">
                                                            <button class="close" data-dismiss="alert"></button> Your form validation is successful! </div>
                                                        <div class="tab-pane active" id="tab1">
                                                            <h3 class="block">Provide your account details</h3>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Surname
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" name="surname" value="{{session.get('auth')['lastname']}}" />
                                                                    <span class="help-block"> Provide your Surname </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Other Names
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" id="othernames" name="othernames"  value="{{session.get('auth')['firstname']}}"/>
                                                                    <span class="help-block"> Provide your Other Names. </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Date of Birth
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" id="mask_date" name="date_of_birth" />
                                                                    <span class="help-block"> Date of Birth year-month-day </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Email
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" name="email" value="{{session.get('auth')['email']}}" />
                                                                    <span class="help-block"> Provide your email address </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Gender
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-2">
                                                                    <select name="gender" class="form-control" id="gender_list">
                                                                        <option value="male">male</option>
                                                                        <option value="female">female</option>
                                                                    </select>
                                                                    <span class="help-block"> Select your gender </span>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <select name="marital_status" class="form-control select-control">
                                                                        <option value="single">single</option>
                                                                        <option value="married">married</option>
                                                                        <option value="divorce">divorce</option>
                                                                        <option value="celebate">celebate</option>
                                                                    </select>
                                                                    <span class="help-block"> Marital Status </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Nationality
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-2">
                                                                    <select name="nationality" class="form-control" id="country_list">
                                                                        <option value="">Country...</option>
                                                                        <option value="Afganistan">Afghanistan</option>
                                                                        <option value="Albania">Albania</option>
                                                                        <option value="Algeria">Algeria</option>
                                                                        <option value="American Samoa">American Samoa</option>
                                                                        <option value="Andorra">Andorra</option>
                                                                        <option value="Angola">Angola</option>
                                                                        <option value="Anguilla">Anguilla</option>
                                                                        <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                                                                        <option value="Argentina">Argentina</option>
                                                                        <option value="Armenia">Armenia</option>
                                                                        <option value="Aruba">Aruba</option>
                                                                        <option value="Australia">Australia</option>
                                                                        <option value="Austria">Austria</option>
                                                                        <option value="Azerbaijan">Azerbaijan</option>
                                                                        <option value="Bahamas">Bahamas</option>
                                                                        <option value="Bahrain">Bahrain</option>
                                                                        <option value="Bangladesh">Bangladesh</option>
                                                                        <option value="Barbados">Barbados</option>
                                                                        <option value="Belarus">Belarus</option>
                                                                        <option value="Belgium">Belgium</option>
                                                                        <option value="Belize">Belize</option>
                                                                        <option value="Benin">Benin</option>
                                                                        <option value="Bermuda">Bermuda</option>
                                                                        <option value="Bhutan">Bhutan</option>
                                                                        <option value="Bolivia">Bolivia</option>
                                                                        <option value="Bonaire">Bonaire</option>
                                                                        <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                                                                        <option value="Botswana">Botswana</option>
                                                                        <option value="Brazil">Brazil</option>
                                                                        <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                                                                        <option value="Brunei">Brunei</option>
                                                                        <option value="Bulgaria">Bulgaria</option>
                                                                        <option value="Burkina Faso">Burkina Faso</option>
                                                                        <option value="Burundi">Burundi</option>
                                                                        <option value="Cambodia">Cambodia</option>
                                                                        <option value="Cameroon">Cameroon</option>
                                                                        <option value="Canada">Canada</option>
                                                                        <option value="Canary Islands">Canary Islands</option>
                                                                        <option value="Cape Verde">Cape Verde</option>
                                                                        <option value="Cayman Islands">Cayman Islands</option>
                                                                        <option value="Central African Republic">Central African Republic</option>
                                                                        <option value="Chad">Chad</option>
                                                                        <option value="Channel Islands">Channel Islands</option>
                                                                        <option value="Chile">Chile</option>
                                                                        <option value="China">China</option>
                                                                        <option value="Christmas Island">Christmas Island</option>
                                                                        <option value="Cocos Island">Cocos Island</option>
                                                                        <option value="Colombia">Colombia</option>
                                                                        <option value="Comoros">Comoros</option>
                                                                        <option value="Congo">Congo</option>
                                                                        <option value="Cook Islands">Cook Islands</option>
                                                                        <option value="Costa Rica">Costa Rica</option>
                                                                        <option value="Cote DIvoire">Cote D'Ivoire</option>
                                                                        <option value="Croatia">Croatia</option>
                                                                        <option value="Cuba">Cuba</option>
                                                                        <option value="Curaco">Curacao</option>
                                                                        <option value="Cyprus">Cyprus</option>
                                                                        <option value="Czech Republic">Czech Republic</option>
                                                                        <option value="Denmark">Denmark</option>
                                                                        <option value="Djibouti">Djibouti</option>
                                                                        <option value="Dominica">Dominica</option>
                                                                        <option value="Dominican Republic">Dominican Republic</option>
                                                                        <option value="East Timor">East Timor</option>
                                                                        <option value="Ecuador">Ecuador</option>
                                                                        <option value="Egypt">Egypt</option>
                                                                        <option value="El Salvador">El Salvador</option>
                                                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                                                                        <option value="Eritrea">Eritrea</option>
                                                                        <option value="Estonia">Estonia</option>
                                                                        <option value="Ethiopia">Ethiopia</option>
                                                                        <option value="Falkland Islands">Falkland Islands</option>
                                                                        <option value="Faroe Islands">Faroe Islands</option>
                                                                        <option value="Fiji">Fiji</option>
                                                                        <option value="Finland">Finland</option>
                                                                        <option value="France">France</option>
                                                                        <option value="French Guiana">French Guiana</option>
                                                                        <option value="French Polynesia">French Polynesia</option>
                                                                        <option value="French Southern Ter">French Southern Ter</option>
                                                                        <option value="Gabon">Gabon</option>
                                                                        <option value="Gambia">Gambia</option>
                                                                        <option value="Georgia">Georgia</option>
                                                                        <option value="Germany">Germany</option>
                                                                        <option value="Ghana">Ghana</option>
                                                                        <option value="Gibraltar">Gibraltar</option>
                                                                        <option value="Great Britain">Great Britain</option>
                                                                        <option value="Greece">Greece</option>
                                                                        <option value="Greenland">Greenland</option>
                                                                        <option value="Grenada">Grenada</option>
                                                                        <option value="Guadeloupe">Guadeloupe</option>
                                                                        <option value="Guam">Guam</option>
                                                                        <option value="Guatemala">Guatemala</option>
                                                                        <option value="Guinea">Guinea</option>
                                                                        <option value="Guyana">Guyana</option>
                                                                        <option value="Haiti">Haiti</option>
                                                                        <option value="Hawaii">Hawaii</option>
                                                                        <option value="Honduras">Honduras</option>
                                                                        <option value="Hong Kong">Hong Kong</option>
                                                                        <option value="Hungary">Hungary</option>
                                                                        <option value="Iceland">Iceland</option>
                                                                        <option value="India">India</option>
                                                                        <option value="Indonesia">Indonesia</option>
                                                                        <option value="Iran">Iran</option>
                                                                        <option value="Iraq">Iraq</option>
                                                                        <option value="Ireland">Ireland</option>
                                                                        <option value="Isle of Man">Isle of Man</option>
                                                                        <option value="Israel">Israel</option>
                                                                        <option value="Italy">Italy</option>
                                                                        <option value="Jamaica">Jamaica</option>
                                                                        <option value="Japan">Japan</option>
                                                                        <option value="Jordan">Jordan</option>
                                                                        <option value="Kazakhstan">Kazakhstan</option>
                                                                        <option value="Kenya">Kenya</option>
                                                                        <option value="Kiribati">Kiribati</option>
                                                                        <option value="Korea North">Korea North</option>
                                                                        <option value="Korea Sout">Korea South</option>
                                                                        <option value="Kuwait">Kuwait</option>
                                                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                                        <option value="Laos">Laos</option>
                                                                        <option value="Latvia">Latvia</option>
                                                                        <option value="Lebanon">Lebanon</option>
                                                                        <option value="Lesotho">Lesotho</option>
                                                                        <option value="Liberia">Liberia</option>
                                                                        <option value="Libya">Libya</option>
                                                                        <option value="Liechtenstein">Liechtenstein</option>
                                                                        <option value="Lithuania">Lithuania</option>
                                                                        <option value="Luxembourg">Luxembourg</option>
                                                                        <option value="Macau">Macau</option>
                                                                        <option value="Macedonia">Macedonia</option>
                                                                        <option value="Madagascar">Madagascar</option>
                                                                        <option value="Malaysia">Malaysia</option>
                                                                        <option value="Malawi">Malawi</option>
                                                                        <option value="Maldives">Maldives</option>
                                                                        <option value="Mali">Mali</option>
                                                                        <option value="Malta">Malta</option>
                                                                        <option value="Marshall Islands">Marshall Islands</option>
                                                                        <option value="Martinique">Martinique</option>
                                                                        <option value="Mauritania">Mauritania</option>
                                                                        <option value="Mauritius">Mauritius</option>
                                                                        <option value="Mayotte">Mayotte</option>
                                                                        <option value="Mexico">Mexico</option>
                                                                        <option value="Midway Islands">Midway Islands</option>
                                                                        <option value="Moldova">Moldova</option>
                                                                        <option value="Monaco">Monaco</option>
                                                                        <option value="Mongolia">Mongolia</option>
                                                                        <option value="Montserrat">Montserrat</option>
                                                                        <option value="Morocco">Morocco</option>
                                                                        <option value="Mozambique">Mozambique</option>
                                                                        <option value="Myanmar">Myanmar</option>
                                                                        <option value="Nambia">Nambia</option>
                                                                        <option value="Nauru">Nauru</option>
                                                                        <option value="Nepal">Nepal</option>
                                                                        <option value="Netherland Antilles">Netherland Antilles</option>
                                                                        <option value="Netherlands">Netherlands (Holland, Europe)</option>
                                                                        <option value="Nevis">Nevis</option>
                                                                        <option value="New Caledonia">New Caledonia</option>
                                                                        <option value="New Zealand">New Zealand</option>
                                                                        <option value="Nicaragua">Nicaragua</option>
                                                                        <option value="Niger">Niger</option>
                                                                        <option value="Nigeria">Nigeria</option>
                                                                        <option value="Niue">Niue</option>
                                                                        <option value="Norfolk Island">Norfolk Island</option>
                                                                        <option value="Norway">Norway</option>
                                                                        <option value="Oman">Oman</option>
                                                                        <option value="Pakistan">Pakistan</option>
                                                                        <option value="Palau Island">Palau Island</option>
                                                                        <option value="Palestine">Palestine</option>
                                                                        <option value="Panama">Panama</option>
                                                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                                                        <option value="Paraguay">Paraguay</option>
                                                                        <option value="Peru">Peru</option>
                                                                        <option value="Phillipines">Philippines</option>
                                                                        <option value="Pitcairn Island">Pitcairn Island</option>
                                                                        <option value="Poland">Poland</option>
                                                                        <option value="Portugal">Portugal</option>
                                                                        <option value="Puerto Rico">Puerto Rico</option>
                                                                        <option value="Qatar">Qatar</option>
                                                                        <option value="Republic of Montenegro">Republic of Montenegro</option>
                                                                        <option value="Republic of Serbia">Republic of Serbia</option>
                                                                        <option value="Reunion">Reunion</option>
                                                                        <option value="Romania">Romania</option>
                                                                        <option value="Russia">Russia</option>
                                                                        <option value="Rwanda">Rwanda</option>
                                                                        <option value="St Barthelemy">St Barthelemy</option>
                                                                        <option value="St Eustatius">St Eustatius</option>
                                                                        <option value="St Helena">St Helena</option>
                                                                        <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                                                                        <option value="St Lucia">St Lucia</option>
                                                                        <option value="St Maarten">St Maarten</option>
                                                                        <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                                                                        <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                                                                        <option value="Saipan">Saipan</option>
                                                                        <option value="Samoa">Samoa</option>
                                                                        <option value="Samoa American">Samoa American</option>
                                                                        <option value="San Marino">San Marino</option>
                                                                        <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                                                                        <option value="Saudi Arabia">Saudi Arabia</option>
                                                                        <option value="Senegal">Senegal</option>
                                                                        <option value="Serbia">Serbia</option>
                                                                        <option value="Seychelles">Seychelles</option>
                                                                        <option value="Sierra Leone">Sierra Leone</option>
                                                                        <option value="Singapore">Singapore</option>
                                                                        <option value="Slovakia">Slovakia</option>
                                                                        <option value="Slovenia">Slovenia</option>
                                                                        <option value="Solomon Islands">Solomon Islands</option>
                                                                        <option value="Somalia">Somalia</option>
                                                                        <option value="South Africa">South Africa</option>
                                                                        <option value="Spain">Spain</option>
                                                                        <option value="Sri Lanka">Sri Lanka</option>
                                                                        <option value="Sudan">Sudan</option>
                                                                        <option value="Suriname">Suriname</option>
                                                                        <option value="Swaziland">Swaziland</option>
                                                                        <option value="Sweden">Sweden</option>
                                                                        <option value="Switzerland">Switzerland</option>
                                                                        <option value="Syria">Syria</option>
                                                                        <option value="Tahiti">Tahiti</option>
                                                                        <option value="Taiwan">Taiwan</option>
                                                                        <option value="Tajikistan">Tajikistan</option>
                                                                        <option value="Tanzania">Tanzania</option>
                                                                        <option value="Thailand">Thailand</option>
                                                                        <option value="Togo">Togo</option>
                                                                        <option value="Tokelau">Tokelau</option>
                                                                        <option value="Tonga">Tonga</option>
                                                                        <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                                                                        <option value="Tunisia">Tunisia</option>
                                                                        <option value="Turkey">Turkey</option>
                                                                        <option value="Turkmenistan">Turkmenistan</option>
                                                                        <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                                                                        <option value="Tuvalu">Tuvalu</option>
                                                                        <option value="Uganda">Uganda</option>
                                                                        <option value="Ukraine">Ukraine</option>
                                                                        <option value="United Arab Erimates">United Arab Emirates</option>
                                                                        <option value="United Kingdom">United Kingdom</option>
                                                                        <option value="United States of America">United States of America</option>
                                                                        <option value="Uraguay">Uruguay</option>
                                                                        <option value="Uzbekistan">Uzbekistan</option>
                                                                        <option value="Vanuatu">Vanuatu</option>
                                                                        <option value="Vatican City State">Vatican City State</option>
                                                                        <option value="Venezuela">Venezuela</option>
                                                                        <option value="Vietnam">Vietnam</option>
                                                                        <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                                                                        <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                                                                        <option value="Wake Island">Wake Island</option>
                                                                        <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                                                                        <option value="Yemen">Yemen</option>
                                                                        <option value="Zaire">Zaire</option>
                                                                        <option value="Zambia">Zambia</option>
                                                                        <option value="Zimbabwe">Zimbabwe</option>
                                                                </select>
                                                                    <span class="help-block"> Select your country </span>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <select name="state" id="state_list" class="form-control">
                                                                        <option value="Abuja FCT">Abuja FCT</option>
                                                                        <option value="Abia">Abia</option>
                                                                        <option value="Adamawa">Adamawa</option>
                                                                        <option value="Akwa Ibom">Akwa Ibom</option>
                                                                        <option value="Anambra">Anambra</option>
                                                                        <option value="Bauchi">Bauchi</option>
                                                                        <option value="Bayelsa">Bayelsa</option>
                                                                        <option value="Benue">Benue</option>
                                                                        <option value="Borno">Borno</option>
                                                                        <option value="Cross River">Cross River</option>
                                                                        <option value="Delta">Delta</option>
                                                                        <option value="Ebonyi">Ebonyi</option>
                                                                        <option value="Edo">Edo</option>
                                                                        <option value="Ekiti">Ekiti</option>
                                                                        <option value="Enugu">Enugu</option>
                                                                        <option value="Gombe">Gombe</option>
                                                                        <option value="Imo">Imo</option>
                                                                        <option value="Jigawa">Jigawa</option>
                                                                        <option value="Kaduna">Kaduna</option>
                                                                        <option value="Kano">Kano</option>
                                                                        <option value="Katsina">Katsina</option>
                                                                        <option value="Kebbi">Kebbi</option>
                                                                        <option value="Kogi">Kogi</option>
                                                                        <option value="Kwara">Kwara</option>
                                                                        <option value="Lagos">Lagos</option>
                                                                        <option value="Nassarawa">Nassarawa</option>
                                                                        <option value="Niger">Niger</option>
                                                                        <option value="Ogun">Ogun</option>
                                                                        <option value="Ondo">Ondo</option>
                                                                        <option value="Osun">Osun</option>
                                                                        <option value="Oyo">Oyo</option>
                                                                        <option value="Plateau">Plateau</option>
                                                                        <option value="Rivers">Rivers</option>
                                                                        <option value="Sokoto">Sokoto</option>
                                                                        <option value="Taraba">Taraba</option>
                                                                        <option value="Yobe">Yobe</option>
                                                                        <option value="Zamfara">Zamfara</option>
                                                               <option value="Outside Nigeria">Outside Nigeria</option>

                                                                </select>
                                                                    <span class="help-block"> State of Origin </span>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <select name="department" id="department_list" class="form-control">
                                                                        <option value="agronomy">Agronomy</option>
                                                                        <option value="physics">Physics</option>
                                                                    </select>
                                                                    <span class="help-block">Select Department</span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Faculty
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-2">
                                                                    <select name="faculty" id="faculty_list" class="form-control">
                                                                        <option value="agriculture and forestry">Agriculture and Forestry</option>
                                                                    </select>
                                                                <span class="help-block">Select Faculty</span>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <input type="text" class="form-control" id="phone_number" value="{{session.get('auth')['phonenumber']}}"  name="phone_number">
                                                                    <span class="help-block"> Phone Number </span>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="tab-pane" id="tab2">
                                                            <h3 class="block">For Emergencies, Contact Persons Information</h3>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Name of Contact Person
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" name="name_contact_person" placeholder="Contact Person's Name" />
                                                                    <span class="help-block"> Provide the name of the person that can be contacted </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Telephone of Contact Person
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" name="phone_contact_person" />
                                                                    <input name="register_id" value="{{this.session.get('auth')['register_id']}}" type="hidden" />
                                                                    <span class="help-block"> Provide your contact person's phone number </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Address of Contact Person
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" name="address_contact_person" />
                                                                    <span class="help-block"> Provide your contact person's street address </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Name of Next of Kin
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" placeholder="Next of Kin" name="next_of_kin_name" />
                                                                    <span class="help-block"> name of Next of Kin </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Phone Number of Next of Kin
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" placeholder="Phone Number Next of Kin" name="next_of_kin_phone_number" />
                                                                    <span class="help-block"> Phone Number of Next of Kin </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Address of Next of Kin
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-4">
                                                                    <input type="text" class="form-control" placeholder="Address of Next of Kin" name="next_kin_address" />
                                                                    <span class="help-block"> Type Address of Next of Kin </span>
                                                                </div>
                                                            </div>
                                                            
                                                        </div>
                                                        
                                                        <!-- TAB 3 -->
                                                        <div class="tab-pane" id="tab3">
                                                            <h3 class="block">Provide Medical Informations</h3>
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Have you ever been admitted as an inpatient</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio1" name="admitted_hospital" value="yes" class="md-radiobtn">
                                                                        <label for="radio1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio2" name="admitted_hospital" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio2">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">History of previous Surgeries/Operations ?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio3" name="previous_surgery" value="yes" class="md-radiobtn">
                                                                        <label for="radio3">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio4" name="previous_surgery" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio4">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Are you on any medication(s)?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio5" name="on_medications" value="yes" class="md-radiobtn">
                                                                        <label for="radio5">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio6" name="on_medications" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio6">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="control-label col-md-5"><strong>Do you suffer from or have you suffered from any of the following?</strong>
                                                                </label>
                                                                
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Tuberculosis</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio7" name="tuberculosis" value="yes" class="md-radiobtn">
                                                                        <label for="radio7">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio8" name="tuberculosis" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio8">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Asthma</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio9" name="asthma" value="yes" class="md-radiobtn">
                                                                        <label for="radio9">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio10" name="asthma" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio10">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Peptic Ulcer Disease</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio11" name="peptic_ulcer" value="yes" class="md-radiobtn">
                                                                        <label for="radio11">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio12" name="peptic_ulcer" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio12">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Sickle Cell Disease</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio13" name="sickle_cell" value="yes" class="md-radiobtn">
                                                                        <label for="radio13">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio14" name="sickle_cell" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio14">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Allergies</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio15" name="allergies" value="yes" class="md-radiobtn">
                                                                        <label for="radio15">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio16" name="allergies" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio16">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Diabetes Mellitus</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio17" name="diabetes_mellitus" value="yes" class="md-radiobtn">
                                                                        <label for="radio17">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio18" name="diabetes_mellitus" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio18">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Hypertension</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio19" name="hypertension" value="yes" class="md-radiobtn">
                                                                        <label for="radio19">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio20" name="hypertension" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio20">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Seizures/Convulsions</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio21" name="convulsions" value="yes" class="md-radiobtn">
                                                                        <label for="radio21">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio22" name="convulsions" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio22">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Mental Illness</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio23" name="mental_illness" value="yes" class="md-radiobtn">
                                                                        <label for="radio23">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radio24" name="mental_illness" value="no" class="md-radiobtn" checked>
                                                                        <label for="radio24">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            
                                                        </div>
                                                        <!-- END TAB 3 -->
                                                        
                                                        <!-- TAB 4 -->
                                                        <div class="tab-pane" id="tab4">
                                                            <h3 class="block">Provide Medical Informations</h3>
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">If the answer to any of the previous page is (Yes), please give details with dates</label>
                                                                <div class="col-md-4">
                                                                    <textarea class="form-control" rows="3" name="illness_details"></textarea>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Do you know your genotype?
                                                                    <span class="required"> * </span>
                                                                </label>
                                                                <div class="col-md-2">
                                                                    <input type="text" name="genotype" class="form-control"  placeholder="Enter your genotype">
                                                                    <span class="help-block"> Enter your Genotype Here. </span>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <input type="text" name="blood_group" class="form-control" placeholder="Enter your blood group">
                                                                    <span class="help-block"> Do you know your blood group? </span>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-5"><strong>Has any of your family members suffered from any of the following?</strong>
                                                                </label>
                                                                
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Tuberculosis</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioa" name="family_tuberculosis" value="yes" class="md-radiobtn">
                                                                        <label for="radioa">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiob" name="family_tuberculosis" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiob">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Hypertension</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioc" name="family_hypertension" value="yes" class="md-radiobtn">
                                                                        <label for="radioc">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiod" name="family_hypertension" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiod">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Seizures/Convulsions</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioe" name="family_seizures" value="yes" class="md-radiobtn">
                                                                        <label for="radioe">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiof" name="family_seizures" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiof">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Diabetes Mellitus</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiog" name="family_diabetes" value="yes" class="md-radiobtn">
                                                                        <label for="radiog">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioh" name="family_diabetes" value="no" class="md-radiobtn" checked>
                                                                        <label for="radioh">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Mental illness</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioi" name="family_mental" value="yes" class="md-radiobtn">
                                                                        <label for="radioi">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioj" name="family_mental" value="no" class="md-radiobtn" checked>
                                                                        <label for="radioj">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Do you react to any drug(s) Yes/No</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiok" name="react_to_drugs" value="yes" class="md-radiobtn">
                                                                        <label for="radiok">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiol" name="react_to_drugs" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiol">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-md-5"><strong>Have you been immunized against the following?</strong>
                                                                </label>
                                                                
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Hepatitis B</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiom" name="hepatitis" value="yes" class="md-radiobtn immunized">
                                                                        <label for="radiom">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radion" name="hepatitis" value="no" class="md-radiobtn immunized" checked>
                                                                        <label for="radion">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 hide">
                                                                    <input type="text" name="immune_hepatitis"  class="form-control mask_date" />
                                                                    <span class="help-block"> Enter the Date of Immunization </span>
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Yellow Fever</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioo" name="yellow_fever" value="yes" class="md-radiobtn immunized">
                                                                        <label for="radioo">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiop" name="yellow_fever" value="no" class="md-radiobtn immunized" checked>
                                                                        <label for="radiop">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-2 hide">
                                                                    <input type="text" name="immune_yellow_fever"  class="form-control mask_date" />
                                                                    <span class="help-block"> Enter the Date of Immunization </span>
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Tetanus</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioq" name="tetanus" value="yes" class="md-radiobtn immunized">
                                                                        <label for="radioq">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radior" name="tetanus" value="no" class="md-radiobtn immunized" checked>
                                                                        <label for="radior">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-2 hide">
                                                                    <input type="text"name="immune_tetanus" class="form-control mask_date" />
                                                                    <span class="help-block"> Enter the Date of Immunization </span>
                                                                </div>
                                                            </div>
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">C.S.M</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radios" name="csm" value="yes" class="md-radiobtn immunized">
                                                                        <label for="radios">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiot" name="csm" value="no" class="md-radiobtn immunized" checked>
                                                                        <label for="radiot">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                                <div class="col-md-2 hide">
                                                                    <input type="text" name="immune_csm" class="form-control mask_date" />
                                                                    <span class="help-block"> Enter the Date of Immunization </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- END TAB 4 -->
                                                        
                                                        
                                                        <!-- TAB 5 -->
                                                        <div class="tab-pane" id="tab5">
                                                            <h3 class="block">Provide Medical Informations</h3>
                                                            
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Do you currently use tobacco products such as cigarettes, snuff etc?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioa1" name="tobacco_products" value="yes" class="md-radiobtn">
                                                                        <label for="radioa1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiob1" name="tobacco_products" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiob1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Do you have someone at home/school who smokes when you are present?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioc1" name="smoker" value="yes" class="md-radiobtn">
                                                                        <label for="radioc1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiod1" name="smoker" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiod1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">Do you currently consume any alcohol?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioe1" name="alcohol" value="yes" class="md-radiobtn">
                                                                        <label for="radioe1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiof1" name="alcohol" value="no" class="md-radiobtn" checked>
                                                                        <label for="radiof1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">have you ever consumed alcohol in any form ?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radiog1" name="consumed_alcohol" value="yes" class="md-radiobtn">
                                                                        <label for="radiog1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioh1" name="consumed_alcohol" value="no" class="md-radiobtn" checked>
                                                                        <label for="radioh1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>

                                                            <div class="form-group form-md-radios">
                                                                <label class="control-label col-md-3">During the past 1 month, other than your regular activity, did you participate in any physical activities or
exercises such as jogging, tennis, golf, gardening or walking for exercise?</label>
                                                                <div class="md-radio-inline col-md-4">
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioi1" name="physical_activity" value="yes" class="md-radiobtn">
                                                                        <label for="radioi1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> Yes </label>
                                                                    </div>
                                                                    <div class="md-radio">
                                                                        <input type="radio" id="radioj1" name="physical_activity" value="no" class="md-radiobtn" checked>
                                                                        <label for="radioj1">
                                                                            <span></span>
                                                                            <span class="check"></span>
                                                                            <span class="box"></span> No </label>
                                                                    </div>
                                                                    
                                                                </div>
                                                            </div>
                                                            
                                                            
                                                            
                                                            
                                                        </div>
                                                        <!-- END TAB 5 -->
                                                        
                                                        <!-- TAB 6 -->
                                                        <div class="tab-pane" id="tab6">
                                                            <h3 class="block">Confirm your account</h3>
                                                            <div class="alert alert-warning"><strong>Are you sure with the details provided?If sure, you can now submit</strong></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-actions">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <a href="javascript:;" class="btn default button-previous">
                                                                <i class="fa fa-angle-left"></i> Back </a>
                                                            <a href="javascript:;" class="btn btn-outline green button-next"> Continue
                                                                <i class="fa fa-angle-right"></i>
                                                            </a>
                                                            <a href="javascript:;" class="btn green button-submit"> Submit
                                                                <i class="fa fa-check"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
{% endblock %}