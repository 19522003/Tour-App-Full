<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<style>
.web-logo:focus {
	border: none;
	outline: none;
}

.dropdown .btn-drop:hover a {
	color: #28bef3;
}

.btn-drop .fa-chevron-down {
	color: white;
}

.btn-drop:hover .fa-chevron-down {
	color: #28bef3;
}

.img-hover-zoom img {
	transition: transform 0.5s ease;
	top: 100px;
	width: 100px;
	height: 100px;
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="home.jsp"><img
		src="../img/travel-logo.png" alt="first travel.com"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent" style="position: relative;">
		<c:if test="${not empty userobj }">
			<div class="col-md-3">
				<a href="#" class="btn btn-success"><i class="fas fa-user"></i>
					${userobj.name}</a> <a data-toggle="modal"
					data-target="#exampleModalCenter"
					class="btn btn-primary text-white" style="margin-left: 5px"><i
					class="fas fa-sign-in-alt"></i> Logout</a>
			</div>
		</c:if>
		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a> <a href="../register.jsp"
					class="btn btn-primary text-white"><i class="fas fa-user-plus"></i>
					Register</a>
			</div>
		</c:if>
	</div>
</nav>
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
					<a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>
<!-- End Modal -->