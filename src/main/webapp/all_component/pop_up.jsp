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
/*Pop Up End*/
</style>
	<%
		User u = (User)session.getAttribute("userobj");
	%>
<div class="fabss fabs-hideem">
	<ul>
		<li>
			<%if(u==null){%>
				<a href="login.jsp"> <span> <img src="img/plantrip.png" alt="inquire"> <em>plan trip</em></span></a>
			<%}else{%>
				<a href="plantrip.jsp"> <span> <img src="img/plantrip.png" alt="inquire"> <em>plan trip</em></span></a>
			<%}%>
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