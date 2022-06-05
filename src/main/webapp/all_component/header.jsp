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

.img-hover-zoom img{
	transition: transform 0.5s ease;
	top: 100px;
	width: 330px;
	height: 300px;
}
</style>
<div>
	<header>
		<a href="index.jsp">
			<button class="web-logo">
				<img src="img/travel-logo.png" alt="first travel.com"></img>
			</button>
		</a>
		<div class="nav-bar">


			<div class="dropdown">
				<div class="btn-drop">
					<a href="./destination_detail1">DESTINATION</a> <i
						class="fas fa-chevron-down fas-1x dropdown-img"></i>
				</div>
				<div>
					<ul class="dropdown-content">
						<li><a href="destination_hanoi.jsp">HA NOI</a>
							<div class="img-hover-zoom">
								<img
									src="https://webdacsan.net/wp-content/uploads/2021/03/tim-hieu-net-dac-sac-van-hoa-am-thuc-ha-noi.jpg"></img>
							</div></li>
						<li><a href="destination_hcm.jsp">HO CHI MINH</a>
							<div class="img-hover-zoom">
								<img
									src="https://vietnam.travel/sites/default/files/inline-images/vietnam%20virtual%20tours%202020-2_0.jpg"></img>
							</div></li>

						<li><a href="destination_nhatrang.jsp">NHA TRANG</a>

							<div class="img-hover-zoom">
								<img
									src="https://i.ytimg.com/vi/zEqpoEWNCRA/maxresdefault.jpg"></img>
							</div></li>

						<li><a href="destination_dalat.jsp">DA LAT</a>
							<div class="img-hover-zoom">
								<img src="https://i.ytimg.com/vi/INLc6gmUg8Q/maxresdefault.jpg"></img>
							</div></li>
					</ul>
				</div>
			</div>

			<div class="dropdown">
				<div class="btn-drop">
					<a href="">TRAVEL STYLE</a> <i
						class="fas fa-chevron-down fas-1x dropdown-img"></i>
				</div>
				<div>
					<ul class="dropdown-content">
						<li><a href="adventure_tour.jsp">ADVENTURE</a> <img
							src="https://demothefirst.webtravel.vn/files/images/74c7f82151b2fbe307f4ef0d583259a3.jpg"
							class="img-aboutus"></img></li>
						<li><a href="honeymoon_tour.jsp">HONEYMOON</a> <img
							src="https://demothefirst.webtravel.vn/files/images/six-senses-con-dao_84837.jpg"
							class="img-aboutus"></img></li>
						<li><a href="relaxing_tour.jsp">RELAXING</a> <img
							src="https://demothefirst.webtravel.vn/files/images/CITS-3.jpg"
							class="img-aboutus"></img></li>
						<li><a href="romance_tour.jsp">ROMANCE</a> <img
							src="https://demothefirst.webtravel.vn/files/images/Resorts%E2%80%99-Executive-Chef-Shares-The-Best-Tips-To-Honeymooners-banner.jpg"
							class="img-aboutus"></img></li>
						<li><a href="family_tour.jsp">FAMILY TOUR</a> <img
							src="https://demothefirst.webtravel.vn/files/images/Family-Tour-Vietnam.jpg"
							class="img-aboutus"></img></li>
					</ul>
				</div>
			</div>

			<div class="dropdown">
				<div class="btn-drop">
					<a href="travelguide.jsp">TRAVEL GUIDE</a>
				</div>
			</div>
			<div class="dropdown">
				<div class="btn-drop">
					<a href="aboutus.jsp">ABOUT US</a>
				</div>
			</div>
			<div class="col pt-3" style="position: relative;">
				<form class="form-inline my-2 my-lg-0" action="search.jsp"
					method="post" style="width: 260px">
					<input class="form-control mr-sm-2" type="search" name="ch"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-primary my-2 my-sm-0" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>
			<c:if test="${not empty userobj }">
				<div class="col"
					style="margin-left: 50px; padding-top: 16px; position: relative;">
					<a href="#" class="btn btn-success"><i class="fas fa-user"></i>
						${userobj.name}</a> <a data-toggle="modal"
						data-target="#exampleModalCenter"
						class="btn btn-primary text-white"><i
						class="fas fa-sign-in-alt"></i> Logout</a>
				</div>
			</c:if>
			<c:if test="${empty userobj }">
				<div class="col"
					style="margin-left: 50px; padding-top: 16px; position: relative;">
					<a href="login.jsp" class="btn btn-success"><i
						class="fas fa-sign-in-alt"></i> Login</a> <a href="register.jsp"
						class="btn btn-primary text-white"><i class="fas fa-user-plus"></i>
						Register</a>
				</div>
			</c:if>
		</div>
	</header>
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
					<a href="logout" type="button" class="btn btn-primary text-white">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>
<!-- End Modal -->