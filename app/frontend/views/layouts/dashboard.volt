{% extends "templates/base.volt" %}

{% block head %}
    {{ this.assets.outputCss('profile') }}
{% endblock %}

{% block content %}
<div class="profile-header-photo">
			<div class="profile-header-photo-in">
				<div class="tbl-cell">
					<div class="info-block">
						<div class="container-fluid">
							<div class="row">
								<div class="col-xl-9 col-xl-offset-3 col-lg-8 col-lg-offset-4 col-md-offset-0">
									<div class="tbl info-tbl">
										<div class="tbl-row">
											<div class="tbl-cell">
												<p class="title">Dan Counsell</p>
												<p>Company Founder</p>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<div class="inline-block">
													<p class="title">23К</p>
													<p>Followers</p>
												</div>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<div class="inline-block">
													<p class="title">938</p>
													<p>Photos</p>
												</div>
											</div>
											<div class="tbl-cell tbl-cell-stat">
												<div class="inline-block">
													<p class="title">18</p>
													<p>Videos</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="change-cover">
				<i class="font-icon font-icon-picture-double"></i>
				Change cover
				<input type="file"/>
			</button>
		</div><!--.profile-header-photo-->

		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-4">
					<aside class="profile-side">
						<section class="box-typical profile-side-user">
							<button type="button" class="avatar-preview avatar-preview-128">
								<img src="img/avatar-1-256.png" alt=""/>
								<span class="update">
									<i class="font-icon font-icon-picture-double"></i>
									Update photo
								</span>
								<input type="file"/>
							</button>
							<button type="button" class="btn btn-rounded">Send a Message</button>
							<div class="btn-group">
								<button type="button"
								        class="btn btn-rounded btn-primary-outline dropdown-toggle"
								        data-toggle="dropdown"
								        aria-haspopup="true"
								        aria-expanded="false">
									Follow
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-home"></span>Quant and Verbal</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-cart"></span>Real Gmat Test</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-speed"></span>Prep Official App</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-users"></span>CATprer Test</a>
									<a class="dropdown-item" href="#"><span class="font-icon font-icon-comments"></span>Third Party Test</a>
								</div>
							</div>
							<div class="bottom-txt">Standing: 154</div>
						</section>

						<section class="box-typical profile-side-stat">
							<div class="tbl">
								<div class="tbl-row">
									<div class="tbl-cell">
										<span class="number">9854</span>
										followers
									</div>
									<div class="tbl-cell">
										<span class="number">112</span>
										following
									</div>
								</div>
							</div>
						</section>

						<section class="box-typical">
							<header class="box-typical-header-sm bordered">Info</header>
							<div class="box-typical-inner">
								<p class="line-with-icon">
									<i class="font-icon font-icon-pin-2"></i>
									New York
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-users-two"></i>
									Group1, Group2
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-case-3"></i>
									Symfony, PHP, JavaScript, Java, Android, SQL, OOP, OOD
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-learn"></i>
									VSU, Compiter Science, Master
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-github"></i>
									<a href="#">Nickname</a>
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-earth"></i>
									<a href="#">example.com</a>
								</p>
								<p class="line-with-icon">
									<i class="font-icon font-icon-calend"></i>
									Registered 8 month ago
								</p>
							</div>
						</section>

					</aside><!--.profile-side-->
				</div>

				<div class="col-xl-9 col-lg-8">
					<section class="tabs-section">
						<div class="tabs-section-nav tabs-section-nav-left">
							<ul class="nav" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" href="#tabs-2-tab-1" role="tab" data-toggle="tab">
										<span class="nav-link-in">About me</span>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#tabs-2-tab-2" role="tab" data-toggle="tab">
										<span class="nav-link-in">Activity</span>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#tabs-2-tab-3" role="tab" data-toggle="tab">
										<span class="nav-link-in">Projects</span>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#tabs-2-tab-4" role="tab" data-toggle="tab">
										<span class="nav-link-in">Settings</span>
									</a>
								</li>
							</ul>
						</div><!--.tabs-section-nav-->

						<div class="tab-content no-styled profile-tabs">
							<div role="tabpanel" class="tab-pane active" id="tabs-2-tab-1">
								<form class="box-typical">
                                                                    <section class="box-typical box-typical-padding">
									<h5 class="with-border m-t-lg">PAGE 1</h5>
                                                                            <div class="row">
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Surname</label>
                                                                                                <input type="text" class="form-control" id="exampleInput" name="surname" placeholder="Enter your surname">
                                                                                                <small class="text-muted">We'll never share your email with anyone else.</small>
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Other Names</label>
                                                                                                <input type="text" class="form-control" name="othernames" id="exampleInputEmail1" placeholder="Type other names">
                                                                                        </fieldset>
                                                                                </div>

                                                                            </div><!--.row-->
                                                                            <div class="row">
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Date of Birth</label>
                                                                                                <input type="text" class="form-control" name="date_of_birth" id="exampleInput" placeholder="Select Date of Birth">
                                                                                                <small class="text-muted">We'll never share your email with anyone else.</small>
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Gender</label>
                                                                                                    <select class="bootstrap-select bootstrap-select-arrow" name="gender">
                                                                                                        <option>Male</option>
                                                                                                        <option>Female</option>

                                                                                                </select>
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Marital Status</label>
                                                                                                    <select class="bootstrap-select bootstrap-select-arrow" name="marital_status">
                                                                                                        <option>Single</option>
                                                                                                        <option>Married</option>

                                                                                                </select>
                                                                                        </fieldset>
                                                                                </div>
                                                                            </div><!--.row-->

                                                                            <div class="row">
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Nationality</label>
                                                                                                <select class="bootstrap-select bootstrap-select-arrow" name="nationality">
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
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">State</label>

                                                                                                <select class="bootstrap-select bootstrap-select-arrow" name="state">
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
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-4">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Department</label>
                                                                                                    <select class="bootstrap-select bootstrap-select-arrow" name="department">
                                                                                                        <option>Agronomy</option>
                                                                                                        <option>Physics</option>

                                                                                                </select>
                                                                                        </fieldset>
                                                                                </div>
                                                                            </div><!--.row-->

                                                                            <div class="row">
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Faculty</label>
                                                                                                <select class="bootstrap-select bootstrap-select-arrow" name="faculty">
                                                                                                    <option>Agriculture and Forestry</option>
                                                                                                </select>
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Telephone Number</label>
                                                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Telephone Number"  name="phone_number">
                                                                                        </fieldset>
                                                                                </div>

                                                                            </div><!--.row-->
                                                                            <h4>For Emergencies, Contact Persons Information</h4>
                                                                            <div class="row">
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Name of Contact Person</label>
                                                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Contact Person's Name" name="name_contact_person">
                                                                                        </fieldset>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label" for="exampleInputEmail1">Address of Contact Person</label>
                                                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Contact Persons's address" name="address_contact_person">
                                                                                        </fieldset>
                                                                                </div>

                                                                            </div><!--.row-->

                                                                            <div class="row">
                                                                                <div class="col-lg-6">
                                                                                        <fieldset class="form-group">
                                                                                                <label class="form-label semibold" for="exampleInput">Telephone of Contact Person</label>
                                                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Contact Person's Phone Number" name="phone_contact_person">
                                                                                        </fieldset>
                                                                                </div>

                                                                            </div><!--.row-->
                                                                        <input name="register_id" value="{{this.session.get('auth')['register_id']}}" type="hidden" />
                                                                        </section>
									<div class="box-typical-footer">
										<div class="tbl">
											<div class="tbl-row">
												<div class="tbl-cell">
													<button type="button" class="btn-icon">
														<i class="font-icon font-icon-earth"></i>
													</button>
												</div>
												<div class="tbl-cell tbl-cell-action">
													<button type="submit" class="btn btn-rounded">Send</button>
												</div>
											</div>
										</div>
									</div>
								</form><!--.box-typical-->

								
							</div><!--.tab-pane-->
							<div role="tabpanel" class="tab-pane" id="tabs-2-tab-2">
								<section class="box-typical box-typical-padding">
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
                                                
                                            
								</section>
							</div><!--.tab-pane-->
							<div role="tabpanel" class="tab-pane" id="tabs-2-tab-3">
								<section class="box-typical box-typical-padding">
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
                                            
                                             </form><!--.box-typical-->
								</section>
							</div><!--.tab-pane-->
							<div role="tabpanel" class="tab-pane" id="tabs-2-tab-4">
								<section class="box-typical  box-typical-padding">
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
                                                    
                                             </form><!--.box-typical-->
								</section>
							</div><!--.tab-pane-->
						</div><!--.tab-content-->
					</section><!--.tabs-section-->
				</div>
			</div><!--.row-->
		</div><!--.container-fluid-->
{% endblock %}
