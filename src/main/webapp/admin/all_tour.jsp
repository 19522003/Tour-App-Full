<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.TourDAOImpl"%>
<%@page import="com.entity.Tour"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Tour Management</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@include file="header.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Tour name</th>
				<th scope="col">City</th>
				<th scope="col">Location</th>
				<th scope="col">Days</th>
				<th scope="col">Nights</th>
				<th scope="col">Travel Style</th>
				<th scope="col">Price</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
			List<Tour> list = dao.getAllTour();
			for (Tour p : list) {
			%>
			<tr>
				<td><%=p.getTourId()%></td>
				<td><img src="../img/<%=p.getPhoto()%>"
					style="width: 50p; height: 50px"></td>
				<td><%=p.getTourName()%></td>
				<td><%=p.getCity()%></td>
				<td><%=p.getLocation()%></td>
				<td><%=p.getDays()%></td>
				<td><%=p.getNights()%></td>
				<td><%=p.getTravelStyle()%></td>
				<td><%=p.getPrice()%></td>
				<td><a href="edit_tour.jsp?id=<%=p.getTourId()%>"
					class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit</a>
					<a href="../delete_tour?id=<%=p.getTourId()%>"
					class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
						Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%@include file="footer.jsp"%>
</body>
</html>