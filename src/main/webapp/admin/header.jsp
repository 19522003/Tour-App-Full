<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<header style="display: flex; position: relative;">
	<div>
		<a href="home.jsp">
			<button class="web-logo">
				<img src="../img/travel-logo.png" alt="first travel.com"></img>
			</button>
		</a>
		<c:if test="${not empty userobj }">
			<div class="col"
				style="padding-top: 16px; position: absolute; left: 1500px; top: 1px">
				<a href="#" class="btn btn-success"><i class="fas fa-user"></i>
					${userobj.name}</a> <a data-toggle="modal"
					data-target="#exampleModalCenter"
					class="btn btn-primary text-white"><i
					class="fas fa-sign-in-alt"></i> Logout</a>
			</div>
		</c:if>
		<c:if test="${empty userobj }">
			<div class="col"
				style="right: 50px; padding-top: 16px; position: relative;">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a> <a href="../register.jsp"
					class="btn btn-primary text-white"><i class="fas fa-user-plus"></i>
					Register</a>
			</div>
		</c:if>
	</div>
</header>
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
	<!-- End Modal -->