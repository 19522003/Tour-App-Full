<%@page import="com.entity.User"%>
<style>
/*Pop Up*/
.fabss {
	position: fixed;
	top: 50%;
	right: 0;
	transform: translateY(-50%);
	z-index: 15;
}

.fabs-hideem:hover ul {
	padding: 10px 8px;
}

.fabss ul {
	background: #0b94c5;
	padding: 10px 2px;
	transition: .2s;
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
}

header .menu ul.menu_parent, ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

.fabss ul li {
	margin-bottom: 15px;
	display: list-item;
}

.fabss ul li a {
	text-decoration: none;
	color: #007bff;
	background-color: transparent;
}

.fabss ul li span {
	display: block;
}

.fabss ul li span {
	text-align: center;
}

.fabss ul li img {
	height: 28px;
	width: auto;
	vertical-align: middle;
	border-style: none;
}

.fabs-hideem ul li span em {
	opacity: 0;
}

.fabss ul li span em {
	display: block;
	color: #fff;
	font-size: 10px;
	font-style: normal;
	-webkit-transition: opacity .2s;
	transition: opacity .2s;
	opacity: 1;
	margin-top: 5px;
	text-transform: uppercase;
}

#brochure .modal-body {
	width: 75%;
	margin: auto;
	text-align: center;
}

.modal-body {
	position: relative;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1rem;
}

#brochure .modal-body p {
	font-size: 14px;
}

#brochure .modal-body input {
	width: 70%;
	padding: 5px 20px;
}

.modal-body input {
	width: 100%;
	border: 1px solid #7D7D7D;
	padding: 20px;
	border-radius: 6px;
}

#brochure .checkedd {
	display: flex;
	width: 70%;
	margin: 20px auto auto;
}

#brochure .checkedd input {
	width: auto;
	margin: 3px 0 0;
	padding: 0;
}

#brochure .modal-body input {
	width: 70%;
	padding: 5px 20px;
}

.modal-body input {
	width: 100%;
	border: 1px solid #7D7D7D;
	padding: 20px;
	border-radius: 6px;
}

#brochure .modal-body .checkedd span {
	font-size: 12px;
}

#brochure .show_agen {
	display: block;
	width: 100%;
	margin-bottom: 30px;
	margin-top: 15px;
}

#brochure .show_agen a {
	display: inline-block;
	background: #303030;
	color: #fff;
	font-size: 12px;
	font-weight: 600;
	padding: 11px 29px;
}

#brochure .modal-dialog .img_bou, #brochure .show_agen, #brochure h4,
	.fabss ul li span {
	text-align: center;
}

#brochure .modal-dialog img {
	width: 95%;
	vertical-align: middle;
	border-style: none;
}
}
/*Pop Up End*/
</style>
<%
User u = (User) session.getAttribute("userobj");
%>
<div class="fabss fabs-hideem">
	<ul>
		<li>
			<%
			if (u == null) {
			%> <a href="login.jsp"> <span> <img src="img/plantrip.png"
					alt="inquire"> <em>plan trip</em></span></a> <%
 } else {
 %> <a href="plantrip.jsp"> <span> <img
					src="img/plantrip.png" alt="inquire"> <em>plan trip</em></span></a> <%
 }
 %>
		</li>
		<li><a href="#" data-toggle="modal" data-target="#brochure">
				<span> <img src="img/brochure.png" alt="brochure"> <em>brochure</em>
			</span>
		</a></li>
		<li><a href="tel: (+84) 242 242 0777"> <span id="callll">
					<img src="img/callus.png" alt="Call"> <em>call us</em>
			</span>
		</a></li>
	</ul>
</div>
<div class="modal fade" id="brochure" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="exampleModalLongTitle">View our
					2022 travel brochure</h4>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Well actually, this is not your normal brochure. This is The
					Ha Noi. A brochure reimagined with beautiful imagery, need to know
					about travel in 2022.</p>
				<input type="text" name="" placeholder="Your email address">
				
				<span class="show_agen"><a href="destination_hanoi.jsp"
					id="submitbrochure">SHOW ME HANOI</a></span>
				<div class="img_bou">
					<img src="img/bou.png">
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>