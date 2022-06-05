<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home Page</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: green;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div style="margin-top: 200px; margin-bottom: 300px">
		<div class="container">
			<div class="row p-5">
				<div class="col-md-4">
					<a href="add_tour.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plus-square fa-3x text-primary"></i><br>
								<h4>Add Tours</h4>
								-----------
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="all_tour.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-plane-departure fa-3x text-danger"></i><br>
								<h4>All Tour</h4>
								-----------
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="all_plantrip.jsp">
						<div class="card">
							<div class="card-body text-center">
								<i class="fas fa-users fa-3x text-warning"></i><br>
								<h4>Customer Plan Trip</h4>
								-----------
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4 style="margin-bottom: 30px">Are you sure to logout ?</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<a href="../logout" type="button"
							class="btn btn-primary text-white">Logout</a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>