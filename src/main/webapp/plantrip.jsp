<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plan trip</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
/*Plan trip*/
.home_pre span {
	font-size: 12px;
}

.contact_inqui {
	overflow: hidden;
}

.contact_inqui, .wrapper_inquire_trip .search {
	position: relative;
}

form {
	display: block;
	margin-top: 0em;
}

.contact_inqui .wrapper_inquire_contac {
	padding-bottom: 50px;
	margin-top: 30px;
	margin-bottom: 20px;
}

.contact_inqui .width_inquire {
	width: 88%;
	margin: auto;
	background: #F7F8FB;
	padding: 20px;
}

.contact_inqui .width_inquire h2 {
	font-size: 24px;
	font-weight: 600;
	width: 100%;
	text-align: center;
	margin-bottom: 40px;
	color: #1A237E;
}

.check_robot span, .contact_inqui .width_inquire h2, .form input, .requi button,
	.wrapper_inquire_trip .rangeslide_ input, .wrapper_inquire_trip p {
	font-family: 'Segoe UI';
}

.contact_inqui .width_inquire .form {
	width: 85%;
	margin: auto;
}

.form input {
	width: 100%;
	padding: 14.5px 30px;
	border: 1px solid #707070;
	margin-bottom: 30px;
	outline: 0;
	overflow: visible;
}

.forms {
	margin-top: 40px;
}

.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.form-group {
	margin-bottom: 1rem;
}

.form-control {
	display: block;
	width: 100%;
	height: calc(1.5em + 0.75rem + 2px);
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.user agent stylesheet
option {
	font-weight: normal;
	display: block;
	white-space: nowrap;
	min-height: 1.2em;
	padding: 0px 2px 1px;
}

#phone-number-country {
	color: #000;
}

.contact_inqui .wrapper_inquire_trip {
	margin-bottom: 50px;
}

.contact_inqui .width_inquire {
	width: 88%;
	margin: auto;
	background: #F7F8FB;
	padding: 20px;
}

.contact_inqui .wrapper_inquire_trip h2 {
	margin-bottom: 20px;
}

.contact_inqui .wrapper_inquire_trip h2 {
	margin-bottom: 20px;
}

.contact_inqui .width_inquire h2 {
	font-size: 24px;
	font-weight: 600;
	width: 100%;
	text-align: center;
	margin-bottom: 40px;
	color: #1A237E;
}

.wrapper_inquire_trip p {
	text-align: center;
	font-weight: 600;
	font-size: 18px;
	margin-bottom: 25px;
	margin-top: 30px;
}

.requi {
	text-align: center;
	position: relative;
	margin-top: 40px;
	margin-bottom: 45px;
}

.requi button {
	display: inline-block;
	padding: 21px 30px;
	background: #28BEF3;
	color: #fff;
	text-decoration: none;
	margin-bottom: 20px;
	font-weight: 600;
	transition: .5s;
}

.requi span {
	display: block;
	font-size: 13px;
}

.wrapper_inquire_trip .search a {
	position: absolute;
	left: 10px;
	top: 10px;
}

.wrapper_inquire_trip .search img {
	width: 30px;
}

.width_inquire .wraP {
	margin-bottom: 30px;
	position: relative;
}

.wrapper_inquire_trip select {
	width: 100%;
	height: 55px;
	padding: 0 30px;
	color: #707070;
}

option {
	font-weight: normal;
	display: block;
	white-space: nowrap;
	min-height: 1.2em;
	padding: 0px 2px 1px;
}

.width_inquire .wraP span {
	position: absolute;
	top: 1px;
	right: 1px;
	width: 50px;
	height: 53px;
	background: #fff;
}

.width_inquire .wraP img {
	width: 25px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	transition: .1s;
}
/*Plan trip End*/
</style>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<div class="container_" style="margin-top: 10px; margin-bottom: 50px">
		<div class="home_pre" style="margin-bottom: 30px">
			<span><a href="index.jsp"
				style="text-decoration: none; color: #1c1c1c;">Home</a></span> <span>
				>> </span> <span>Plan trip</span>
		</div>
		<div class="contact_inqui">
			<form action="plan-trip" method="post" id="contactform">
				<div class="wrapper_inquire_contac width_inquire">
					<h2>CONTACT DETAILS</h2>
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg }</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg }</p>
						<c:remove var="failedMsg" scope="session" />
					</c:if>
					<div class="form">
						<input type="text" name="fname" id="First"
							placeholder="First name*" required> 
						<input
							type="text" name="lname" id="Last" placeholder="Last name"
							required="required" value="<%=u.getName()%>"> 
						<input type="email"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Ex: abc@gmail.com" required="required" name="email" value="<%=u.getEmail()%>">
						<input type="text" name="city" id="City" placeholder="City*"
							required="required">
						<div class=" forms">
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group" style="background: #fff">
										<label for="phone-number-country" class="floating">COUNTRY</label>
										<select class="form-control valid" id="phone-number-country"
											name="country" autocomplete="off" aria-invalid="false" required="required"><option
												value="af">Afghanistan</option>
											<option value="al">Albania</option>
											<option value="dz">Algeria</option>
											<option value="as">American Samoa</option>
											<option value="ad">Andorra</option>
											<option value="ao">Angola</option>
											<option value="ai">Anguilla</option>
											<option value="ag">Antigua and Barbuda</option>
											<option value="ar">Argentina</option>
											<option value="am">Armenia</option>
											<option value="aw">Aruba</option>
											<option value="au">Australia</option>
											<option value="at">Austria</option>
											<option value="az">Azerbaijan</option>
											<option value="bs">Bahamas</option>
											<option value="bh">Bahrain</option>
											<option value="bd">Bangladesh</option>
											<option value="bb">Barbados</option>
											<option value="by">Belarus</option>
											<option value="be">Belgium</option>
											<option value="bz">Belize</option>
											<option value="bj">Benin</option>
											<option value="bm">Bermuda</option>
											<option value="bt">Bhutan</option>
											<option value="bo">Bolivia</option>
											<option value="ba">Bosnia and Herzegovina</option>
											<option value="bw">Botswana</option>
											<option value="br">Brazil</option>
											<option value="io">British Indian Ocean Territory</option>
											<option value="vg">British Virgin Islands</option>
											<option value="bn">Brunei</option>
											<option value="bg">Bulgaria (????????????????)</option>
											<option value="bf">Burkina Faso</option>
											<option value="bi">Burundi (Uburundi)</option>
											<option value="kh">Cambodia (?????????????????????)</option>
											<option value="cm">Cameroon (Cameroun)</option>
											<option value="ca">Canada</option>
											<option value="cv">Cape Verde (Kabu Verdi)</option>
											<option value="bq">Caribbean Netherlands</option>
											<option value="ky">Cayman Islands</option>
											<option value="cf">Central African Republic
												(R??publique centrafricaine)</option>
											<option value="td">Chad (Tchad)</option>
											<option value="cl">Chile</option>
											<option value="cn">China (??????)</option>
											<option value="cx">Christmas Island</option>
											<option value="cc">Cocos (Keeling) Islands</option>
											<option value="co">Colombia</option>
											<option value="km">Comoros (????????? ????????????????)</option>
											<option value="cd">Congo (DRC) (Jamhuri ya
												Kidemokrasia ya Kongo)</option>
											<option value="cg">Congo (Republic)
												(Congo-Brazzaville)</option>
											<option value="ck">Cook Islands</option>
											<option value="cr">Costa Rica</option>
											<option value="ci">C??te d???Ivoire</option>
											<option value="hr">Croatia (Hrvatska)</option>
											<option value="cu">Cuba</option>
											<option value="cw">Cura??ao</option>
											<option value="cy">Cyprus (????????????)</option>
											<option value="cz">Czech Republic (??esk?? republika)</option>
											<option value="dk">Denmark (Danmark)</option>
											<option value="dj">Djibouti</option>
											<option value="dm">Dominica</option>
											<option value="do">Dominican Republic (Rep??blica
												Dominicana)</option>
											<option value="ec">Ecuador</option>
											<option value="eg">Egypt (???????????????)</option>
											<option value="sv">El Salvador</option>
											<option value="gq">Equatorial Guinea (Guinea
												Ecuatorial)</option>
											<option value="er">Eritrea</option>
											<option value="ee">Estonia (Eesti)</option>
											<option value="et">Ethiopia</option>
											<option value="fk">Falkland Islands (Islas Malvinas)</option>
											<option value="fo">Faroe Islands (F??royar)</option>
											<option value="fj">Fiji</option>
											<option value="fi">Finland (Suomi)</option>
											<option value="fr">France</option>
											<option value="gf">French Guiana (Guyane fran??aise)</option>
											<option value="pf">French Polynesia (Polyn??sie
												fran??aise)</option>
											<option value="ga">Gabon</option>
											<option value="gm">Gambia</option>
											<option value="ge">Georgia (??????????????????????????????)</option>
											<option value="de">Germany (Deutschland)</option>
											<option value="gh">Ghana (Gaana)</option>
											<option value="gi">Gibraltar</option>
											<option value="gr">Greece (????????????)</option>
											<option value="gl">Greenland (Kalaallit Nunaat)</option>
											<option value="gd">Grenada</option>
											<option value="gp">Guadeloupe</option>
											<option value="gu">Guam</option>
											<option value="gt">Guatemala</option>
											<option value="gg">Guernsey</option>
											<option value="gn">Guinea (Guin??e)</option>
											<option value="gw">Guinea-Bissau (Guin?? Bissau)</option>
											<option value="gy">Guyana</option>
											<option value="ht">Haiti</option>
											<option value="hn">Honduras</option>
											<option value="hk">Hong Kong (??????)</option>
											<option value="hu">Hungary (Magyarorsz??g)</option>
											<option value="is">Iceland (??sland)</option>
											<option value="in">India (????????????)</option>
											<option value="id">Indonesia</option>
											<option value="ir">Iran (???????????????????)</option>
											<option value="iq">Iraq (?????????????????????)</option>
											<option value="ie">Ireland</option>
											<option value="im">Isle of Man</option>
											<option value="il">Israel (???????????????????)</option>
											<option value="it">Italy (Italia)</option>
											<option value="jm">Jamaica</option>
											<option value="jp">Japan (??????)</option>
											<option value="je">Jersey</option>
											<option value="jo">Jordan (?????????????????????)</option>
											<option value="kz">Kazakhstan (??????????????????)</option>
											<option value="ke">Kenya</option>
											<option value="ki">Kiribati</option>
											<option value="xk">Kosovo</option>
											<option value="kw">Kuwait (?????????????????????)</option>
											<option value="kg">Kyrgyzstan (????????????????????)</option>
											<option value="la">Laos (?????????)</option>
											<option value="lv">Latvia (Latvija)</option>
											<option value="lb">Lebanon (???????????????????)</option>
											<option value="ls">Lesotho</option>
											<option value="lr">Liberia</option>
											<option value="ly">Libya (???????????????????)</option>
											<option value="li">Liechtenstein</option>
											<option value="lt">Lithuania (Lietuva)</option>
											<option value="lu">Luxembourg</option>
											<option value="mo">Macau (??????)</option>
											<option value="mk">Macedonia (FYROM) (????????????????????)</option>
											<option value="mg">Madagascar (Madagasikara)</option>
											<option value="mw">Malawi</option>
											<option value="my">Malaysia</option>
											<option value="mv">Maldives</option>
											<option value="ml">Mali</option>
											<option value="mt">Malta</option>
											<option value="mh">Marshall Islands</option>
											<option value="mq">Martinique</option>
											<option value="mr">Mauritania (???????????????????????????)</option>
											<option value="mu">Mauritius (Moris)</option>
											<option value="yt">Mayotte</option>
											<option value="mx">Mexico (M??xico)</option>
											<option value="fm">Micronesia</option>
											<option value="md">Moldova (Republica Moldova)</option>
											<option value="mc">Monaco</option>
											<option value="mn">Mongolia (????????????)</option>
											<option value="me">Montenegro (Crna Gora)</option>
											<option value="ms">Montserrat</option>
											<option value="ma">Morocco (?????????????????????)</option>
											<option value="mz">Mozambique (Mo??ambique)</option>
											<option value="mm">Myanmar (Burma) (??????????????????)</option>
											<option value="na">Namibia (Namibi??)</option>
											<option value="nr">Nauru</option>
											<option value="np">Nepal (???????????????)</option>
											<option value="nl">Netherlands (Nederland)</option>
											<option value="nc">New Caledonia
												(Nouvelle-Cal??donie)</option>
											<option value="nz">New Zealand</option>
											<option value="ni">Nicaragua</option>
											<option value="ne">Niger (Nijar)</option>
											<option value="ng">Nigeria</option>
											<option value="nu">Niue</option>
											<option value="nf">Norfolk Island</option>
											<option value="kp">North Korea (?????? ???????????? ?????? ?????????)</option>
											<option value="mp">Northern Mariana Islands</option>
											<option value="no">Norway (Norge)</option>
											<option value="om">Oman (???????????????????)</option>
											<option value="pk">Pakistan (???????????????????????)</option>
											<option value="pw">Palau</option>
											<option value="ps">Palestine (?????????????????????)</option>
											<option value="pa">Panama (Panam??)</option>
											<option value="pg">Papua New Guinea</option>
											<option value="py">Paraguay</option>
											<option value="pe">Peru (Per??)</option>
											<option value="ph">Philippines</option>
											<option value="pl">Poland (Polska)</option>
											<option value="pt">Portugal</option>
											<option value="pr">Puerto Rico</option>
											<option value="qa">Qatar (???????????????)</option>
											<option value="re">R??union (La R??union)</option>
											<option value="ro">Romania (Rom??nia)</option>
											<option value="ru">Russia (????????????)</option>
											<option value="rw">Rwanda</option>
											<option value="bl">Saint Barth??lemy
												(Saint-Barth??lemy)</option>
											<option value="sh">Saint Helena</option>
											<option value="kn">Saint Kitts and Nevis</option>
											<option value="lc">Saint Lucia</option>
											<option value="mf">Saint Martin (Saint-Martin
												(partie fran??aise))</option>
											<option value="pm">Saint Pierre and Miquelon
												(Saint-Pierre-et-Miquelon)</option>
											<option value="vc">Saint Vincent and the Grenadines</option>
											<option value="ws">Samoa</option>
											<option value="sm">San Marino</option>
											<option value="st">S??o Tom?? and Pr??ncipe (S??o Tom?? e
												Pr??ncipe)</option>
											<option value="sa">Saudi Arabia (????????????????? ??????????????
												??????????????????????)</option>
											<option value="sn">Senegal (S??n??gal)</option>
											<option value="rs">Serbia (????????????)</option>
											<option value="sc">Seychelles</option>
											<option value="sl">Sierra Leone</option>
											<option value="sg">Singapore</option>
											<option value="sx">Sint Maarten</option>
											<option value="sk">Slovakia (Slovensko)</option>
											<option value="si">Slovenia (Slovenija)</option>
											<option value="sb">Solomon Islands</option>
											<option value="so">Somalia (Soomaaliya)</option>
											<option value="za">South Africa</option>
											<option value="kr">South Korea (????????????)</option>
											<option value="ss">South Sudan (??????????? ????????????????????)</option>
											<option value="es">Spain (Espa??a)</option>
											<option value="lk">Sri Lanka (??????????????? ???????????????)</option>
											<option value="sd">Sudan (???????????????????????)</option>
											<option value="sr">Suriname</option>
											<option value="sj">Svalbard and Jan Mayen</option>
											<option value="sz">Swaziland</option>
											<option value="se">Sweden (Sverige)</option>
											<option value="ch">Switzerland (Schweiz)</option>
											<option value="sy">Syria (???????????????????)</option>
											<option value="tw">Taiwan (??????)</option>
											<option value="tj">Tajikistan</option>
											<option value="tz">Tanzania</option>
											<option value="th">Thailand (?????????)</option>
											<option value="tl">Timor-Leste</option>
											<option value="tg">Togo</option>
											<option value="tk">Tokelau</option>
											<option value="to">Tonga</option>
											<option value="tt">Trinidad and Tobago</option>
											<option value="tn">Tunisia (?????????????????)</option>
											<option value="tr">Turkey (T??rkiye)</option>
											<option value="tm">Turkmenistan</option>
											<option value="tc">Turks and Caicos Islands</option>
											<option value="tv">Tuvalu</option>
											<option value="vi">U.S. Virgin Islands</option>
											<option value="ug">Uganda</option>
											<option value="ua">Ukraine (??????????????)</option>
											<option value="ae">United Arab Emirates (???????????????????
												?????????????? ????????????????????)</option>
											<option value="gb">United Kingdom</option>
											<option value="us">United States</option>
											<option value="uy">Uruguay</option>
											<option value="uz">Uzbekistan</option>
											<option value="vu">Vanuatu</option>
											<option value="va">Vatican City</option>
											<option value="ve">Venezuela</option>
											<option value="vn">Vietnam</option>
											<option value="wf">Wallis and Futuna</option>
											<option value="eh">Western Sahara</option>
											<option value="ye">Yemen</option>
											<option value="zm">Zambia</option>
											<option value="zw">Zimbabwe</option>
											<option value="ax">??land Islands</option></select>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group" style="background: #fff">
										<label for="phone-number" class="floating">PHONE
											NUMBER </label>
										<div class="phone-number" style="height: 40px">
											<input class="form-control" id="phone-number" name="phone"
												type="tel" autocomplete="off" placeholder="PHONE NUMBER" value="<%=u.getPhone()%>">
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div id="my_trip" class="wrapper_inquire_trip width_inquire">
					<h2>TRIP DETAILS</h2>
					<p>Where would you like to go?</p>
					<div class="form">
						<div class="search">
							<input type="text" name="destination" id="Destination" required="required">
						</div>
						<p>When would you like to go?</p>
						<div class="wraP">
							<select name="month" id="Month" required="required">
								<option value="0">Select month</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> <span><img src="img/dropdown.png"></span>
						</div>
						<div class="wraP">
							<select name="days" id="Day">
								<option value="0">Number of days</option>
								<option value="Under 7 days">Under 7 days</option>
								<option value="7 - 10 days">7 - 10 days</option>
								<option value="11 - 15 days">11 - 15 days</option>
								<option value="Over 15 days">Over 15 days</option>

							</select> <span><img src="img/dropdown.png"></span>
						</div>
						<p>How many people are traveling?</p>
						<div class="wraP">
							<select id="NumberPeople" name="numberpeople">
								<option value="0">Number of people</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="Over 10">Over 10</option>
							</select> <span><img src="img/dropdown.png"></span>
						</div>
						<p>How much would you like to spend per person?</p>
						<input type="number" name="money" id="Destination"
							placeholder="Your money">
						<div class="check_robot">
							<span>We'd love to contact you by email from time to time
								about exciting news, products and events we think will be of
								interest to you. If you wish to unsubscribe, you can find an
								unsubscribe link at the bottom of all our marketing emails. <br>
								<br>All details provided by you will be held by Black
								Tomato Limited and used in accordance with our Privacy Policy.
							</span>
						</div>
						<div class="requi">
							<button class="btn btn-primary" type="submit" id="Submit">REQUEST
								MY TAILORMADE TRIP</button>
							<span>(We'll get back to you in 2 business hours)</span>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>