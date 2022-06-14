<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travel Guide</title>
<%@include file="all_component/allCss.jsp"%>
<style>
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 20px;
	margin-bottom: 40px;
}

.row {
	margin-right: -15px;
	margin-left: -15px;
}

.col-md-9 {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
}

.color {
	padding: 20px 0 0;
	margin-bottom: 10px;
}

.color ul li {
	display: inline-block;
}

.color ul li a {
	font-size: 15px;
}

.col-3-appendTo {
	margin-top: 23px;
}

.widget-aric {
	border: 1px solid #e0e4e6;
	background-color: #fff;
	margin-bottom: 23px;
}

.widget-aric h4 {
	border: 1px solid #fff;
	font-size: 14px;
	color: #fff;
	padding: 12px 9px;
	background-color: #144aa8;
	font-weight: 700;
	margin: 0;
}

.widget-book-us h4, .widget-faqs h4 {
	padding-bottom: 10px;
	border-bottom: 2px solid #e4e7e8;
	margin-bottom: 12px;
	font-weight: 700;
	font-size: 14px;
}

.widget-aric .widget-body {
	padding: 15px 10px 20px;
}

.text-center {
	text-align: center;
}

.widget-body img {
	max-width: 120px;
}

.widget-speak .btn {
	padding: 8px 30px;
	margin-top: 15px;
	display: inline-block;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-style-1d {
	background-color: #2db300;
	color: #fff !important;
}

.widget-book-us, .widget-faqs {
	padding: 18px 15px 10px;
	border: 1px solid #e4e7e8;
	margin-bottom: 23px;
}

.widget-book-us .list-check li, .widget-faqs .list-check li {
	color: #666;
	margin-bottom: 14px;
	padding-left: 25px;
}

.img-circle {
	border-radius: 50%;
	border: 2px solid;
	vertical-align: middle;
}

.btn-style-1d:hover {
	background-color: #3b8500;
}
</style>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-9  col-sm-8">
				<div class="color">
					<ul>
						<li><a href="index.jsp" style="text-decoration: none">Home >></a></li>
						<li>Travel Guide</li>
					</ul>

				</div>
				<div class="head-info-content">
					<h1>Travel guide: Visa &amp; Immigration Documents</h1>
				</div>
				<div class="content-partners">
					<div style="text-align: justify;">
						Most nationalities, excluding those from Southeast Asian countries
						such as Thailand, Laos, Malaysia, Singapore, and some
						visa-exempted countries require a visa to enter Vietnam.<br>
						&nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Document checklist for your cruise trip:</strong><br>
						&nbsp;
					</div>

					<div style="text-align: justify;">(1) Valid passport</div>

					<div style="text-align: justify;">(2) Visa, if applicable
						(see below for details)</div>

					<div style="text-align: justify;">(3) Health certificates or
						medical notes, if applicable</div>

					<div style="text-align: justify;">(4) Cruise booking voucher
						(for your own reference)</div>

					<div style="text-align: justify;">&nbsp;</div>

					<div style="text-align: justify;">
						Please note that guests who do not possess the valid documents
						mentioned above may be denied boarding and risk cancellation of
						trip without refund. Such documents are also important in case of
						emergency.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Vietnam Visa:</strong>
					</div>

					<div style="text-align: justify;">
						A visa is not a passport: a passport allows you to travel beyond
						your home country's border and serves as a form of identity, a
						visa is a legal document that allows you into a particular
						countries. If you are from Australia, North America, Europe and
						some other countries, you can travel to many places without a
						visa, but Vietnam is not the case.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Who need a visa:</strong>
					</div>

					<div style="text-align: justify;">
						The answer depends on the passport you are holding. Some
						nationalities are granted entry to Vietnam for a month or less
						without a visa - the rest must possess a written permit of some
						form to board the plane and enter the country.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Countries Days</strong>
					</div>

					<ul>
						<li style="text-align: justify">Myanmar, Brunei 14</li>
						<li style="text-align: justify">Denmark, Finland, France,
							Germany, Italy, Japan, South Korea, Norway, Russia, Spain,
							Sweden, UK 15</li>
						<li style="text-align: justify">Philippines 21</li>
						<li style="text-align: justify">Cambodia, Indonesia, Laos,
							Malaysia, Singapore,Thailand 30</li>
					</ul>

					<div style="text-align: justify;">
						<strong>Visa On Arrival</strong>
					</div>

					<div style="text-align: justify;">
						Applying for a Visa on arrival will save you time and in most case
						money. In fact, obtaining a visa on arrival is increasingly the
						most popular way to travel to Vietnam.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						Blue Dragon Tours is very pleased to arrange a Vietnam Visa on
						arrival for guests booking cruises to Halong Bay with our company.
						You will require an Approval Letter to obtain a Vietnam visa upon
						arrival. This is a letter, approved by Vietnamese Immigration
						Department, which allows you to enter and remain in Vietnam for a
						given period. With the Approval Letter, you can obtain a Vietnam
						visa at three Vietnamese international airports including Hanoi,
						Ho Chi Minh city and Da Nang.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Visa type: </strong>Tourist Validity: One (1) month (from
						the date of issue) Number of entries: Single entry<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Please Note:</strong> For US/American passport holders,
						visa on arrival is now available for 1 year multiple entry visa
						only. If you wish to obtain shorter term visas (1 month/3month),
						it is advised that you contact your local embassy for procedures.
					</div>

					<div style="text-align: justify;">
						Fees<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Service fee: </strong>(upon request) - FREE of Charge We
						offer Free visa approval letter for customers who book a tour or
						overnight cruise with us. Stamping fee: 25 USD - Payable directly
						in cash at the airport when you arrive in Vietnam.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Procedure</strong>
					</div>

					<div style="text-align: justify;">
						After receiving your request for a Vietnam visa, we will arrange a
						pre-approval letter so you can pick up your Vietnam visa on
						arrival at an International airport in Vietnam. The processing
						time is 3-5 working days.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						When you arrive at the airport, present your passport, the
						pre-approved letter, 25 USD for stamping fee and two (2) passport
						photos (4cm x 6cm) to obtain the visa stamp.<br> &nbsp;
					</div>

					<div style="text-align: justify;">
						<strong>Notes:</strong>
					</div>

					<ul>
						<li style="text-align: justify"><em>Our Vietnamese visa
								service is available only for guests booking a cruise with our
								company.</em></li>
						<li style="text-align: justify"><em>This service is
								available for arrival at one of Vietnam s international airport
								as mentioned above. If you come to Vietnam by sea or by road,
								please contact us for more information.</em></li>
						<li style="text-align: justify"><em>Blue Dragon Tours
								cannot guarantee you will be granted a Vietnam visa. All visa
								decisions are made by the Vietnamese Immigration Department.
								Blue Dragon Tours is not liable, for any reasons whatsoever, for
								any failure to obtain a Vietnam visa or subsequent consequences
								resulting from any failure to obtain a Vietnam visa.</em></li>
						<li style="text-align: justify"><em>We reserve the
								rights to deny to any visa-on-arrival request due to our
								limitted ability in process visas for certain nationalities
								only.</em></li>
					</ul>

				</div>

			</div>
			<div class="  col-md-3 col-3-appendTo" id="container_6">
				<div class="widget-speak  widget-aric bg-default">
					<h4 class="dropdown-wd-sm">Speak to someone who's been there</h4>
					<div class="widget-body text-center">
						<img
							src="https://i.pinimg.com/736x/ba/35/44/ba3544e4f9ae1f1dd9b9c5b02b58f40a.jpg"
							alt="Speak with Bluedragon" class="img-circle">
						<p>
							Need a local advice on your travel trip? Call us now <b
								class="inline-block">(024) 2242 0777</b>
						</p>
						<%
						if (session.getAttribute("userobj") != null) {
						%>
						<a href="plantrip.jsp" class="btn btn-style-1d z_14 text-bold">Contact
							us <i class="fa fa-angle-right"></i>
						</a>
						<%
						} else {
						%>
						<a href="login.jsp" class="btn btn-style-1d z_14 text-bold">Contact
							us <i class="fa fa-angle-right"></i>
						</a>
						<%
						}
						%>

					</div>
				</div>
				<div class="widget-book-us bg-default widget-dropdown">
					<h4 class="widget-tit">
						Why book with us?
					</h4>
					<div class="widget-hide-mb">
						<div class="widget-body">
							<ul class="list-check">
								<li>All of our tours are best-value guaranteed.</li>
								<li>We're here 24/7 - for travel support.</li>
								<li>All of our tour guides and travel consultants are
									local, well trained and experienced to ensure your
									satisfaction.</li>
								<li>Simple booking process - instant confirmation.</li>
							</ul>
						</div>
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