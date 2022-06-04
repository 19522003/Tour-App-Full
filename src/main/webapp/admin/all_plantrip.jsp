<%@page import="com.entity.CustomerTrip"%>
<%@page import="com.DAO.CustomerTripDAOImpl"%>
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
<title>Admin: Plan trip</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@include file="header.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center text-danger">Hello Admin</h3>
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
				<th scope="col">Request ID</th>
				<th scope="col">First name</th>
				<th scope="col">Last name</th>
				<th scope="col">User Email</th>
				<th scope="col">City</th>
				<th scope="col">Country</th>
				<th scope="col">Phone</th>
				<th scope="col">Travel Destination</th>
				<th scope="col">Month</th>
				<th scope="col">Days</th>
				<th scope="col">People</th>
				<th scope="col">Money</th>
			</tr>
		</thead>
		<tbody>
			<%
			CustomerTripDAOImpl dao = new CustomerTripDAOImpl(DBConnect.getConnection());
			List<CustomerTrip> list = dao.getAllCustomerTrip();
			for (CustomerTrip p : list) {
			%>
			<tr>
				<td><%=p.getRequestId()%></td>
				<td><%=p.getFirstName()%></td>
				<td><%=p.getLastName()%></td>
				<td><%=p.getEmail()%></td>
				<td><%=p.getCity()%></td>
				<td><%=p.getCountry()%></td>
				<td><%=p.getPhone()%></td>
				<td><%=p.getDestination()%></td>
				<td><%=p.getMonth()%></td>
				<td><%=p.getDays()%></td>
				<td><%=p.getPeople()%></td>
				<td><%=p.getMoney()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 400px"><%@include file="footer.jsp"%></div>
</body>
</html>