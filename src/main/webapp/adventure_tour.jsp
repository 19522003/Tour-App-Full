<%@page import="com.entity.Tour"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.TourDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adventure</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<div class="banner_main_p3">
		<div class="img_banner_top">
			<img class="img_banner"
				src="https://adventurebase--live.s3.eu-west-2.amazonaws.com/uploads/2020/07/accomplishment-action-adult-adventure-372098-scaled-e1601379300758.jpg" style="width: 100%;height: 800px;object-fit: cover" />
		</div>
		<div class="detail_info">
			<div class="container">
				<div class="rutu">
					<form action="" class="wow bounceInLeft fadeInLeft"
						data-wow-delay=".2s">
						<i>A 11 day trip by Travel Agency 2377525</i> <span
							class="star"> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i>
						</span> <span><a href=""><i>40 REVIEWS</i></a></span>
					</form>
				</div>
				<ul>
					<li><a href=""><img src="img/facebook.png" /></a></li>
					<li><a href=""><img src="img/twitter.png" /></a></li>
					<li><a href=""><img src="img/google.png" /></a></li>
					<li><a href=""><img src="img/pinterest.png" /></a></li>
					<li><a href=""><img src="img/instagram.png" /></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mainwrapper">
		<div class="home_pre">
			<div class="container">
				<span><a href="index.jsp">Home</a></span> <span> » </span> <span>Adventure</span>
			</div>
		</div>
		<div class="wrapper_ title_top_header">
			<div class="container">
				<h2 class="text-center">Adventure Tours &amp; Package Tours</h2>
				<div class="p_text_ninh_binh text-center">
					<p>
						<span> Adventure tour with nice price
						</span><br />&nbsp;
					</p>
				</div>
				<%
				if (session.getAttribute("userobj") != null) {
				%>
				<span class="heal_plan"> <a href="plantrip.jsp"><i
						class="fas fa-angle-right"></i>Help me plan my trip </a></span>
				<%
				} else {
				%>
				<span class="heal_plan"> <a href="login.jsp"><i
						class="fas fa-angle-right"></i>Help me plan my trip </a></span>
				<%
				}
				%>

			</div>
		</div>
	</div>
	<div class="main_wrapper2">
		<div class="wrapper_ text_feat">
			<div class="container">
				<h2>Feature Tours</h2>
				<p>Get inspired with our sample trips below. You can have any
					trip tailor made for your private travel. Any number of days. Any
					departure date. Any experience you want.</p>
			</div>
		</div>
		<div class="list_guide">
			<div class="container">
				<div class="list_guide_left">
					<%
					TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
					List<Tour> list = dao.getAllAdventureTour();
					for (Tour p : list) {
					%>
					<div class="item_guide">
						<div class="img_list">
							<a href="#"> <img src="img/<%=p.getPhoto()%>" alt="#" /> <span><%=p.getTravelStyle()%></span>
							</a>
						</div>
						<div class="wrap_list_gui">
							<h3>
								<a href="#" title="Best Trip in Ha Long Bay 3 Days 2 Nights"><%=p.getTourName()%></a>
							</h3>
							<div class="add">
								<div class="add_left">
									<span> <img src="img/ad1.png" alt="Location" /><i><%=p.getLocation()%></i>
									</span> <span> <img src="img/res.png" alt="Time" /><i><%=p.getDays()%>
											Days <%=p.getNights()%> Nights</i>

									</span>
								</div>
								<span class="price">$ <%=p.getPrice()%></span>
								<div class="add_view">
									<a href="tour_detail.jsp?tid=<%=p.getTourId()%>" title="">view
										detail</a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</div>

	</div>
	<div class="banner_picture">
		<img src="https://hvitserk.norrona.com/en/assets/components/phpthumbof/cache/thor-h-ulstad-ITPK-preikestolen.1a25b4b6164819f70664f1559de783ef.5fbb20e5d3859fc0f27123cb6e83b248.jpg" alt="Ha Long Tours &amp; Package Tours " />
	</div>
	<div class="main_wrapper2">
		<div class="heal">
			<%
			if (session.getAttribute("userobj") != null) {
			%>
			<span class="heal_plan"><a href="plantrip.jsp"><i
					class="fas fa-angle-right"></i> Help Me Plan My Trip</a></span>
			<%
			} else {
			%>
			<span class="heal_plan"> <a href="login.jsp"><i
					class="fas fa-angle-right"></i>Help me plan my trip </a></span>
			<%
			}
			%>

		</div>
		<div class="wrapper_ list_post_3">
			<div class="container">
				<h2 class="text-center">Reviews of The First Travel's Referral
					Service</h2>
				<span class="star_refer text-center"> <i class="fas fa-star"></i>
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <span>4.9
						star based on 1689 reviews</span>
				</span>
				<div class="wrapper_list_post3">
					<div class="item_post">
						<a href="#">
							<h3 class="title_list_post">T and N Travel</h3>
						</a> <span class="text-item"> He tour was amazing such great
							scenario one of the best tours I have been on so far in my South
							East Asian adventure. The tour guide was great very informative
							and spoke perfect english very recommended! So glad I was able to
							have a great guide <a href="#">Read more</a>
						</span> <span class="star_refer"> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i>
						</span>
						<p>REVIEWED BY Tuan Anh</p>
					</div>
					<div class="item_post">
						<a href="#">
							<h3 class="title_list_post">
								Travel Review: Luxury Trip to Spain, Madrid, Bacelone, Girona <span
									class="moreellipses">...&nbsp;</span><span class="morecontent"><span>
										..</span></span>
							</h3>
						</a> <span class="text-item"> "Overall our trip was a
							tremendous experience - all thank to your travel company and
							Zacasso." <a href="#">Read more</a>
						</span> <span class="star_refer"> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i>
						</span>
						<p>REVIEWED BY TAMARA M.</p>
					</div>
					<div class="item_post">
						<a href="#">
							<h3 class="title_list_post">T and N Travel</h3>
						</a> <span class="text-item"> He tour was amazing such great
							scenario one of the best tours I have been on so far in my South
							East Asian adventure. The tour guide was great very informative
							and spoke perfect english very recommended! So glad I was able to
							have a great guide <a href="#">Read more</a>
						</span> <span class="star_refer"><i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> </span>
						<p>REVIEWED BY Tuan Anh</p>
					</div>
					<div class="item_post">
						<a href="#">
							<h3 class="title_list_post">
								Travel Review: Luxury Trip to Spain, Madrid, Bacelone, Girona <span
									class="moreellipses">...&nbsp;</span><span class="morecontent"><span>
										..</span></span>
							</h3>
						</a> <span class="text-item"> "Overall our trip was a
							tremendous experience - all thank to your travel company and
							Zacasso." <a href="#">Read more</a>
						</span> <span class="star_refer"> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i>
						</span>
						<p>REVIEWED BY TAMARA M.</p>
					</div>
					<div class="item_post">
						<a href="#">
							<h3 class="title_list_post">
								Travel Review: Luxury Trip to Spain, Madrid, Bacelone, Girona <span
									class="moreellipses">...&nbsp;</span><span class="morecontent"><span>
										..</span></span>
							</h3>
						</a> <span class="text-item"> "Overall our trip was a
							tremendous experience - all thank to your travel company and
							Zacasso." <a href="#">Read more</a>
						</span> <span class="star_refer"> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i>
						</span>
						<p>REVIEWED BY TAMARA M.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
	<%@include file="all_component/pop_up.jsp"%>
</body>
</html>