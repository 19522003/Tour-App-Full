<%@page import="com.entity.Tour"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.TourDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tour Detail</title>
<style type="text/css">
main {
	margin-top: 10px;
	width: 100%;
}

.container_ {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

.text-title {
	padding: 0 15px;
	margin-bottom: 15px;
}

.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.col-lg-9 {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}

.banner_top {
	display: flex;
}

.banner_main .img_banner, .banner_top, .banner_top .banner_main,
	.img_banner img {
	width: 100%;
}

.banner_main .img_banner_5 {
	background-color: #F5F5F5;
}

.banner_main .img_banner {
	width: 100%;
}

.carousel {
	position: relative;
}

.carousel-inner {
	position: relative;
	width: 100%;
	overflow: hidden;
}

.carousel-item-next, .carousel-item-prev, .carousel-item.active {
	display: block;
}

.carousel-item {
	position: relative;
	display: none;
	float: left;
	width: 100%;
	margin-right: -100%;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: -webkit-transform .6s ease-in-out;
	transition: transform .6s ease-in-out;
	transition: transform .6s ease-in-out, -webkit-transform .6s ease-in-out;
}

.banner_main .carousel-item img {
	margin: 0;
}

.w-100 {
	width: 100% !important;
}

.d-block {
	display: block !important;
}

img {
	vertical-align: middle;
	border-style: none;
}

.rutu {
	position: relative;
	width: 100%;
	margin: 20px 0;
}

.rutu, .rutu ul {
	display: inline-flex;
}

.rutu form {
	margin: 0 10px;
	display: block;
}

.rutu i {
	font-size: 14px;
	font-style: italic;
}

.rutu form .star i {
	color: #fff;
	padding: 5px;
	background: #33C494;
}

.rutu a {
	color: #000;
}

.control_list {
	margin-top: 50px;
	margin-bottom: 40px;
}

.control_list ul {
	padding: 0;
	margin: 0;
	display: flex;
}

.nav-tabs {
	border-bottom: 1px solid #dee2e6;
}

.nav {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	padding-left: 0;
	margin-bottom: 0;
	list-style: none;
}

.control_list ul li {
	text-transform: uppercase;
	font-size: 11px;
	margin-right: 5px;
}

.control_list ul li a.active {
	color: #000;
	font-weight: 600;
	border-bottom: 3px solid #FFD400;
}

.control_list ul li a {
	padding: 6px 11px;
	display: block;
	font-size: 16px;
	color: #a8a8a8;
	font-weight: 600;
	text-decoration: none;
}

.tab-content {
	overflow: hidden;
}

.post_blogs_ {
	margin-top: 2px;
	padding: 15px 0;
	margin-bottom: 50px;
}

.control_list ul li {
	text-transform: uppercase;
	font-size: 11px;
	margin-right: 5px;
}

.detailad:nth-child(1), .detailad:nth-child(3) {
	width: 46%;
	padding: 10px 0;
}

.imgdetailad {
	width: 45px;
	float: left;
	height: 50px;
}

.col-lg-3 {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}

.news {
	position: relative;
	width: 100%;
}

.qq1 {
	position: -webkit-sticky;
	position: sticky;
	top: 95px;
	width: 100%;
	border: 1px solid;
	padding: 15px;
	margin-bottom: 30px;
}

.news .owl-theme .owl-nav [class*=owl-]:hover, .qq1 {
	background: 0 0;
	background-image: initial;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: initial;
	background-repeat-x: initial;
	background-repeat-y: initial;
	background-attachment: initial;
	background-origin: initial;
	background-clip: initial;
	background-color: initial;
}

.news h6 {
	text-align: center;
	font-size: 16px;
	text-transform: uppercase;
	padding: 10px 0 30px;
}

h6 {
	display: block;
	margin-bottom: 0.5rem;
	font-weight: 500;
	line-height: 1.2;
	margin-top: 0;
	margin-block-start: 2.33em;
	margin-block-end: 2.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.check_quality p {
	font-size: 14px;
	padding: 0 10px;
	text-align: center;
	margin-bottom: 20px;
	font-family: 'Josefin Sans', sans-serif;
}

.check_quality img {
	display: block;
	margin: auto;
	width: 40px;
}

.heal_plan {
	margin-bottom: 35px;
}
</style>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<%
	int tid = Integer.parseInt(request.getParameter("tid"));
	TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
	Tour p = dao.getTourbyID(tid);
	%>
	<main>
		<div class="container_" style="margin-bottom: 80px">
			<div class="row">
				<h3 class="text-title"><%=p.getLocation()%>
					<%=p.getDays()%>
					Days
					<%=p.getNights()%>
					Nights
				</h3>
				<div class="col-lg-9">
					<div class="banner_top">
						<div class="banner_main">
							<div class="img_banner img_banner_5 wow zoomIn fadeIn">
								<div id="carouselExampleIndicators" class="carousel fadeIn">
									<div class="carousel-inner">
										<div class="carousel-item active">
											<img class="d-block w-100" src="img/<%=p.getPhoto()%>"
												alt="Best Trip in Ha Long Bay 3 Days 2 Nights">
										</div>
									</div>
								</div>
								<div class="rutu">
									<form action="" class="wow bounceInLeft fadeInLeft"
										data-wow-delay=".2s">
										<i>A 11 day trip to Japan by Travel Agency 2377525</i> <span
											class="star"> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i>
										</span> <span><a href=""><i>40 REVIEWS</i></a></span>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="control_list">
						<ul class="nav nav-tabs">
							<li class="wow bounceInLeft fadeInLeft" data-wow-delay=".2s"><a
								data-toggle="tab" href="#photo" class="active">Detail</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div id="photo" class="tab-pane slide active">
							<div class="post_blogs_">
								<div class="detaitable">
									<div class="detailad">
										<div class="imgdetailad">
											<img alt="" src="img/trip_days_icon.png"
												style="height: 30px; width: 30px">
										</div>

										<div class="txtdeatilad" style="font-size: 14px;">
											<strong>TOTAL: </strong><strong> </strong> <span
												style="font-family: tahoma, geneva, sans-serif; font-size: 16px"><%=p.getDays()%>
												Days</span>
										</div>
									</div>

									<div class="detailad">
										<div class="imgdetailad">
											<img alt="" src="img/countries_icon.png"
												style="height: 30px; width: 30px">
										</div>

										<div class="txtdeatilad" style="font-size: 14px;">
											<strong>COUNTRY: </strong> <span
												style="font-family: tahoma, geneva, sans-serif; font-size: 16px"><%=p.getCity()%></span>
										</div>
									</div>
									<div class="detailad">
										<div class="imgdetailad">
											<img alt="" src="img/destinations_icon.png"
												style="height: 30px; width: 30px">
										</div>

										<div class="txtdeatilad" style="font-size: 14px;">
											<strong>LOCATION: </strong><strong> </strong> <span
												style="font-family: tahoma, geneva, sans-serif; font-size: 16px"><%=p.getLocation()%></span>
										</div>
									</div>

									<div class="detailad">
										<div class="imgdetailad">
											<img alt="" src="img/departure_date_icon.png"
												style="height: 30px; width: 30px">
										</div>

										<div class="txtdeatilad" style="font-size: 14px;">
											<strong>PRICE:</strong> <span
												style="font-family: tahoma, geneva, sans-serif; font-size: 16px"><%=p.getPrice()%>
												$</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="display: block;">
						<span style="font-size: 16px"><span
							style="font-family: tahoma, geneva, sans-serif"><%=p.getDescription()%>
						</span></span>
					</div>

					<div style="text-align: justify">
						<br> <br> &nbsp;
					</div>

					<div class="customixe_ wow zoomIn fadeIn" data-wow-delay=".25s">
						<%
						if (session.getAttribute("userobj") != null) {
						%>
						<span class="heal_plan"><a href="plantrip.jsp"><i
								class="fas fa-angle-right"></i> Help Me Plan My Trip</a></span>
						<%
						} else {
						%>
						<span class="heal_plan"><a href="login.jsp"><i
								class="fas fa-angle-right"></i> Help Me Plan My Trip</a></span>
						<%
						}
						%>

					</div>
				</div>
				<div class="col-lg-3">
					<div class="news" style="height: 100%">
						<div class="qq1">
							<h6 class="wow zoomIn fadeIn" data-wow-delay=".2s">why
								choose us</h6>
							<div class="check_quality">
								<p>
									<img src="img/bestprice.png">Best price
								</p>
								<p>
									<img src="img/shield.png">Default and fraud protection
								</p>
								<p>
									<img src="img/support24.png"> 24/7 support from our
									partners
								</p>
								<p>
									<img src="img/quick_pro.png">Quick and Professional
								</p>
								<p>
									<img src="img/unmatch.png">Unmatched destination
									expertise
								</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>