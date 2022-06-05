<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Tour</title>
<%@ include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="header.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container" style="margin-bottom:40px">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-body">
						<h4 class="text-center">Add Tour</h4>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						<form action="../tour_add" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Tour
									name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" required="required" name="name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Location
								</label> <input type="text" class="form-control" id="exampleInputEmail1"
									required="required" name="location">
							</div>
							<div class="form-row">
								<div class="form-group col-md-4 mb-3" style="margin-left: 20px">
									<label for="exampleInputEmail1" class="form-label">Travel
										days</label> <input type="number" class="form-control"
										id="exampleInputEmail1" required="required" name="days">
								</div>
								<div class="form-group col-md-4 mb-3" style="margin-left: 80px">
									<label for="exampleInputEmail1" class="form-label">Travel
										nights</label> <input type="number" class="form-control"
										id="exampleInputEmail1" required="required" name="nights">
								</div>
							</div>

							<div class="form-group">
								<label for="inputState" class="form-label">Travel style</label>
								<select name="style" id="inputState" class="form-control">
									<option selected>--Select---</option>
									<option value="ADVENTURE">ADVENTURE</option>
									<option value="HONEYMOON">HONEYMOON</option>
									<option value="RELAXING">RELAXING</option>
									<option value="ROMANCE">ROMANCE</option>
									<option value="FAMILY TOUR">FAMILY TOUR</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState" class="form-label">City</label> <select
									name="city" id="inputState" class="form-control">
									<option selected>--Select---</option>
									<option value="HA NOI">HA NOI</option>
									<option value="TP HCM">TP HCM</option>
									<option value="NHA TRANG">NHA TRANG</option>
									<option value="DA LAT">DA LAT</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Price</label>
								<input type="number" class="form-control"
									id="exampleInputEmail1" required="required" name="price">
							</div>
							<div class="form-group">
								<label for=" Email1msg">Description</label>
								<textarea class="form-control" rows="5" name="description"></textarea>
							</div>
							<div class="form-group">
								<label for="inputState" class="form-label">Upload Photo</label>
								<input type="file" name="photo" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary mt-2">Add
								Tour</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>