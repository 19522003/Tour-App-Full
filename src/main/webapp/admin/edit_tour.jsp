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
<title>Admin: Edit Tour</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-body">
						<h4 class="text-center">Edit Products</h4>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						TourDAOImpl dao = new TourDAOImpl(DBConnect.getConnection());
						Tour p = dao.getTourbyID(id);
						%>
						<form action="../edit_tour" method="post">
							<input type="hidden" name="id" value="<%=p.getTourId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Tour
									name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" required="required" name="name" value="<%=p.getTourName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Location
								</label> <input type="text" class="form-control" id="exampleInputEmail1"
									required="required" name="location" value="<%=p.getLocation()%>">
							</div>
							<div class="form-row">
								<div class="form-group col-md-4 mb-3" style="margin-left: 20px">
									<label for="exampleInputEmail1" class="form-label">Travel
										days</label> <input type="number" class="form-control"
										id="exampleInputEmail1" required="required" name="days" value="<%=p.getDays()%>">
								</div>
								<div class="form-group col-md-4 mb-3" style="margin-left: 80px">
									<label for="exampleInputEmail1" class="form-label">Travel
										nights</label> <input type="number" class="form-control"
										id="exampleInputEmail1" required="required" name="nights" value="<%=p.getNights()%>">
								</div>
							</div>
							<div class="form-group">
								<label for="inputState" class="form-label">Travel style</label>
								<select name="style" id="inputState" class="form-control">
									<%
									if ("ADVENTURE".equals(p.getTravelStyle())) {
									%>
									<option value="ADVENTURE" selected="selected">ADVENTURE</option>
									<option value="HONEYMOON">HONEYMOON</option>
									<option value="RELAXING">RELAXING</option>
									<option value="ROMANCE">ROMANCE</option>
									<option value="FAMILY TOUR">FAMILY TOUR</option>
									<%
									} else if ("HONEYMOON".equals(p.getTravelStyle())) {
									%>
									<option value="ADVENTURE">ADVENTURE</option>
									<option value="HONEYMOON" selected="selected">HONEYMOON</option>
									<option value="RELAXING">RELAXING</option>
									<option value="ROMANCE">ROMANCE</option>
									<option value="FAMILY TOUR">FAMILY TOUR</option>
									<%
									} else if ("RELAXING".equals(p.getTravelStyle())) {
									%>
									<option value="ADVENTURE">ADVENTURE</option>
									<option value="HONEYMOON">HONEYMOON</option>
									<option value="RELAXING" selected="selected">RELAXING</option>
									<option value="ROMANCE">ROMANCE</option>
									<option value="FAMILY TOUR">FAMILY TOUR</option>
									<%
									} else if ("ROMANCE".equals(p.getTravelStyle())) {
									%>
									<option value="ADVENTURE">ADVENTURE</option>
									<option value="HONEYMOON">HONEYMOON</option>
									<option value="RELAXING">RELAXING</option>
									<option value="ROMANCE" selected="selected">ROMANCE</option>
									<option value="FAMILY TOUR">FAMILY TOUR</option>
									<%
									} else if ("FAMILY TOUR".equals(p.getTravelStyle())) {
									%>
									<option value="ADVENTURE">ADVENTURE</option>
									<option value="HONEYMOON">HONEYMOON</option>
									<option value="RELAXING">RELAXING</option>
									<option value="ROMANCE">ROMANCE</option>
									<option value="FAMILY TOUR" selected="selected">FAMILY
										TOUR</option>
									<%
									}
									%>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState" class="form-label">City</label> <select name="city" id="inputState"
									class="form-control">
									<%
									if ("HA NOI".equals(p.getCity())) {
									%>
									<option value="HA NOI" selected>HA NOI</option>
									<option value="TP HCM">TP HCM</option>
									<%
									} else {
									%>
									<option value="HA NOI">HA NOI</option>
									<option value="TP HCM" selected>TP HCM</option>
									<%
									}
									%>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Price</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" required="required" name="price" value="<%=p.getPrice()%>">
							</div>
							
							<button type="submit" class="btn btn-primary mt-2">Update Tour</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>