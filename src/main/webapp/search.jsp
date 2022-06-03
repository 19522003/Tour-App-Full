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
<title>Search: result</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<div class="list_guide">
		<div class="container">
			<div class="list_guide_left">
				<%
				String ch = request.getParameter("ch");
				TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
				List<Tour> list = dao.getTourBySearch(ch);
				for (Tour p : list) {
				%>
				<div class="item_guide" style="margin-top:100px">
					<div class="img_list">
						<a href="#"> <img src="img/<%=p.getPhoto()%>"
							alt="Best Trip in Ha Long Bay 3 Days 2 Nights" /> <span><%=p.getTravelStyle()%></span>
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
	<%@include file="all_component/footer.jsp"%>
</body>
</html>