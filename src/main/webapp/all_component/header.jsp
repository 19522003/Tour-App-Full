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
	<a class="navbar-brand" href="index.jsp"><img
		src="img/travel-logo.png" alt="first travel.com"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown active pt-1"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">DESTINATION</a>
				<div>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="destination_hanoi.jsp">HA
								NOI</a></li>
						<li><a class="dropdown-item" href="destination_hcm.jsp">HO
								CHI MINH </a></li>

						<li><a class="dropdown-item" href="destination_nhatrang.jsp">NHA
								TRANG</a></li>

						<li><a class="dropdown-item" href="destination_dalat.jsp">DA
								LAT</a></li>
					</ul>
				</div></li>
			<li class="nav-item dropdown active pt-1"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">TRAVEL STYLE</a>
				<div>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="adventure_tour.jsp">ADVENTURE</a></li>
						<li><a class="dropdown-item" href="honeymoon_tour.jsp">HONEYMOON</a></li>
						<li><a class="dropdown-item" href="relaxing_tour.jsp">RELAXING</a></li>
						<li><a class="dropdown-item" href="romance_tour.jsp">ROMANCE</a></li>
						<li><a class="dropdown-item" href="family_tour.jsp">FAMILY
								TOUR</a></li>
					</ul>
				</div></li>
			<li class="nav-item dropdown active pt-1"><a class="nav-link"
				href="travelguide.jsp" id="navbarDropdownMenuLink"
				aria-haspopup="true" aria-expanded="false">TRAVEL GUIDE</a></li>
			<li class="nav-item dropdown active pt-1"><a class="nav-link"
				href="aboutus.jsp" id="navbarDropdownMenuLink" aria-haspopup="true"
				aria-expanded="false">ABOUT US</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0" action="search.jsp"
			method="post" style="width: 260px">
			<input class="form-control mr-sm-2" type="search" name="ch"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-primary my-2 my-sm-0" type="submit">
				<i class="fas fa-search"></i>
			</button>
		</form>
		<c:if test="${not empty userobj }">
			<div class="col-md-3" style="display: flex;">
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-user"></i> ${userobj.name}</a> <a href="logout"
					class="btn btn-primary text-white" style="margin-left: 5px"><i
					class="fas fa-sign-in-alt"></i> Logout</a>
			</div>
		</c:if>
		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a> <a href="register.jsp"
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
					<a href="logout" type="button" class="btn btn-primary text-white">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>
<!-- End Modal -->