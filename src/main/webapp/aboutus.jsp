<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
<%@include file="all_component/allCss.jsp"%>
<style>
.nous-about {
	padding-top: 40px;
	background-size: cover;
	text-align: center;
	margin-top: 10px;
	background: highlighttext;
}

.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

.nous-about h2 {
	padding: 0 0 30px 0;
	font-size: 36px;
	margin-bottom: 0.5rem;
	font-weight: 500;
	line-height: 1.2;
}

.nous-nd #panel1 img {
	width: 100%;
}

#panel2 h2 {
	font-size: 36px;
	padding: 0 0 70px 0;
	text-align: center;
}

.trav-all {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
}

.trav-one {
	width: 33.3333333%;
	padding: 0 30px 0 0;
}

.all-made .made-one {
	height: 500px;
	padding: 80px 30px;
	background-color: #f1f1f1;
	text-align: center;
}

.all-made .made-one .made-P {
	font-size: 14px;
	line-height: 1.5;
}

.tittle-hi {
	text-align: center;
	font-size: 55px;
}

.col-lg-7 {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}

.hi-sub {
	text-align: center;
	font-size: 14px;
	line-height: 1.64;
	color: #5e5e5e;
}

div#panel5 {
	margin: 30px 0;
}

.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.col-md-6 {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}

.detai-all {
	padding: 15px 0;
}

.all-one {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
}

.one {
	overflow: hidden;
	width: 50%;
}

.img-pa {
	transition: transform .3s;
}

.img-pa img {
	width: 100%;
	vertical-align: middle;
	border-style: none;
}

.two {
	width: 50%;
}

.all-pa {
	height: auto;
	text-align: left;
	background-color: #f4f4f4;
	padding: 23px 30px;
	margin: 15px 15px;
}

.all-pa .h3-pa h3 {
	font-size: 24px;
	line-height: 1.21;
	letter-spacing: 1px;
	color: #000;
	margin-bottom: 7px;
	text-align: left;
}

.all-pa .ceo-pa {
	font-size: 14px;
	line-height: 1.64;
	color: #a2a2a2;
	margin-bottom: 10px;
}

.all-pa .text-pa {
	font-size: 14px;
	line-height: 1.64;
	color: #5e5e5e;
}

.all-bootom {
	padding: 80px 0;
}

.all-bootom .travel-bottom button {
	background: #28BEF3;
	padding: 15px 20px;
	border: 0;
}

.all-bootom .travel-bottom button a {
	text-transform: uppercase;
	font-size: 15px;
	line-height: 1.6;
	letter-spacing: 0.3px;
	color: #fff;
}

.all-made .made-one:hover {
	background-image: url(img/halong2.png);
	background-repeat: no-repeat;
	background-position: center;
	color: #fff;
	background-size: cover;
	transform: scale(1.1);
	transition: transform 0.5s ease;
}

.all-made #made-two:hover {
	background-image: url(img/halong.png);
	transform: scale(1.1);
	transition: transform 0.5s ease;
}

.all-made #made-three:hover {
	background-image: url(img/halong1.png);
	transform: scale(1.1);
	transition: transform 0.5s ease;
}
</style>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<div class="nous-about">
		<div class="container">
			<h2 class="wow fadeInUp"
				style="visibility: visible; animation-name: fadeInUp;">We are
				not a tour guide, we create unique experiences</h2>
		</div>
		<div class="container">
			<div class="">
				<div style="text-align: center">
					<div style="text-align: justify">LEDMC is a team of
						professionals whose aim is to bring satisfaction and pleasure to
						our customers by offering them bucket-list experiences at
						unbelievable prices. We provide tours, hotel bookings, flight
						bookings and other travel services in Vietnam, Laos, Cambodia,
						Thailand &amp; Myanmar with the Best Price Guaranteed. We also
						offer customized tours in Indochina for both, individuals as well
						as groups, with a wide range of options. We want you to experience
						Indochinas natural beauty. We live and breathe the culture,
						traditions and beliefs every moment of every day. We are very
						proud of the greatness of our homeland and its neighbors, and it
						is our absolute pleasure to show you everything we love about our
						region. We help you to save your valuable time and provide you
						tour packages with high quality. Our truly devoted guides who can
						speak English, French, Spanish, Chinese and other languages. Their
						professionalism, personality and outstanding knowledge are the
						reasons they are employed by us. We selectively cooperate with
						trusted partners including hoteliers, cruise lines and local
						suppliers to provide a perfect trip in Indochina for travelers at
						the lowest cost.</div>
				</div>

			</div>
		</div>
		<div class="nous-nd">
			<div id="panel1">
				<div class="container">
					<img alt="">
				</div>
			</div>

			<div id="panel2" class="wow fadeInUp"
				style="visibility: visible; animation-name: fadeInUp;">
				<div class="container" style="padding-top: 40px">
					<h2>Why to choose us?</h2>
				</div>
			</div>

			<div id="panel3" class="wow fadeInUp"
				style="visibility: visible; animation-name: fadeInUp;">
				<div class="container">
					<div class="trav-all">
						<div class="trav-one lg-made">
							<div class="all-made">
								<div class="made-one">
									<h2>15+ Years of Experience</h2>
									<div class="made-P">We have over 15 years of domestic and
										international luxury travel experience.</div>
								</div>
							</div>
						</div>
						<div class="trav-one lg-made">
							<div class="all-made">
								<div class="made-one" id="made-two">
									<h2>Commitment to quality</h2>
									<div class="made-P">In collaboration with human resources
										consultants, geographic, historical, ethnic and cultural
										researchers, former members of the field operations team, and
										tour guides great. We are committed to providing perfect
										services for your vacation. You just take and go, everything
										we take care of.</div>
								</div>
							</div>
						</div>
						<div class="trav-one lg-made">
							<div class="all-made">
								<div class="made-one" id="made-three">
									<h2>Unique Experience</h2>
									<div class="made-P">
										We understand that you are unique and we do our best to help
										you make your journey unique. We can tailor the program to
										best suit the wishes of our customers, to ensure it works for
										you.<span style="color: rgb(34, 34, 34)"> </span>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div id="panel4" class="wow fadeInUp"
				style="margin: 70px 0px; visibility: visible; animation-name: fadeInUp;">
				<div class="container">
					<h2 class="tittle-hi">Meet Our Team</h2>
					<div class="col-lg-7" style="margin: auto; margin-bottom: 30px;">
						<div class="hi-sub">
							All of our travel consultants follow a specially devised training
							program to develop their expertise in all aspects of travel and
							customer service. We personally check the hotels, resorts, and
							restaurants, and listen carefully to our clients requirements in
							order to deliver the right itineraries and experiences. <br>We
							are committed to operating with the highest standards of service
							and professionalism while continuing to improve on the qualities
							that make us not just good, but great.
						</div>
					</div>
				</div>
			</div>

			<div id="panel5" class="wow fadeInUp"
				style="visibility: visible; animation-name: fadeInUp;">
				<div class="container">
					<div class="row" style="justify-content: center">
						<div class="all-pa">
							<div class="h3-pa">
								<h3>Vo Thanh Phat - 19522003</h3>
							</div>
							<div class="ceo-pa">Director</div>
							<div class="text-pa">I am proud to represent FirstTravel
								and help you find your perfect vacation.</div>
						</div>
						<div class="all-pa">
							<div class="h3-pa">
								<h3>Vo Tan Viet - 19522519</h3>
							</div>
							<div class="ceo-pa">Director</div>
							<div class="text-pa">I am proud to represent FirstTravel
								and help you find your perfect vacation.</div>
						</div>
						<div class="all-pa">
							<div class="h3-pa">
								<h3>Mai Long Thanh - 19522232</h3>
							</div>
							<div class="ceo-pa">Director</div>
							<div class="text-pa">I am proud to represent FirstTravel
								and help you find your perfect vacation.</div>
						</div>
						<div class="all-pa">
							<div class="h3-pa">
								<h3>Nguyen Thien Sua - 19522144</h3>
							</div>
							<div class="ceo-pa">Director</div>
							<div class="text-pa">I am proud to represent FirstTravel
								and help you find your perfect vacation.</div>
						</div>
					</div>
				</div>
			</div>

			<div class="all-bootom">
				<div class="container">
					<div class="travel-bottom">
						<button>
							<%
							if (session.getAttribute("userobj") != null) {
							%>
							<a href="plantrip.jsp">Travel With Us Now</a>
							<%
							} else {
							%>
							<a href="login.jsp">Travel With Us Now</a>
							<%
							}
							%>

						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<%@include file="all_component/footer.jsp"%>
	</div>
	<%@include file="all_component/pop_up.jsp"%>
</body>
</html>