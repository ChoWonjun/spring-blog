<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${initParam.root}">Funk 2 Punk</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${initParam.root}">Home</a></li>
				<li><a href="${initParam.root}post" id="menu-toggle">Board</a></li>
				<li><a href="${initParam.root}portfolio">Portfolio</a></li>
				<sec:authorize access="!isAuthenticated()">
					<li><a href="${initParam.root}login">Sign In</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a onclick="document.logoutForm.submit()" href="#">Sign Out</a></li>
					<form name="logoutForm" action="${initParam.root}logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</sec:authorize>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

<!-- side bar -->
<nav id="sidebar-wrapper">
	<ul class="sidebar-nav">
		<a id="menu-close" href="#"
			class="btn btn-light btn-lg pull-right toggle"><i
			class="fa fa-times"></i></a>
		<li class="sidebar-brand"><a href="#top" onclick=$("#menu-close").click(); >Categories</a>
		</li>
		<li><a href="#top" onclick=$("#menu-close").click(); >IT</a></li>
		<li><a href="#about" onclick=$("#menu-close").click(); >Java</a>
		</li>
		<li><a href="#services" onclick=$("#menu-close").click(); >Spring</a>
		</li>
		<li><a href="#portfolio" onclick=$("#menu-close").click(); >Database</a>
		</li>
		<li><a href="#portfolio" onclick=$("#menu-close").click(); >Book</a>
		</li>
		<li><a href="#portfolio" onclick=$("#menu-close").click(); >Movie</a>
		</li>
		<li><a href="#portfolio" onclick=$("#menu-close").click(); >etc.</a>
		</li>
	</ul>
</nav>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header"
	style="background-image: url('${initParam.root}resources/img/home-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="site-heading">
					<h1>Cho's Blog</h1>
					<hr class="small">
					<span class="subheading">A Personal Repository about IT by
						Cho Wonjun</span>
				</div>
			</div>
		</div>
	</div>
</header>
