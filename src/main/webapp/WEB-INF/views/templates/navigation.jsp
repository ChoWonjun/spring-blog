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
			<a class="navbar-brand" href="${initParam.root}">Codewid.Me</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${initParam.root}">Home</a></li>
				<li><a href="${initParam.root}post" id="menu-toggle">Board</a></li>
				<li><a href="http://codewid.me/portfolio">Portfolio</a></li>
				<sec:authorize access="!isAuthenticated()">
					<li><a href="${initParam.root}login">Sign In</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a onclick="document.logoutForm.submit()" href="#">Sign
							Out</a></li>
					<form name="logoutForm" action="${initParam.root}logout"
						method="post">
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
		<li><a href="${initParam.root}category/IT/1" onclick=$("#menu-close").click(); >IT</a></li>
		<li><a href="${initParam.root}category/Java/1" onclick=$("#menu-close").click(); >Java</a>
		</li>
		<li><a href="${initParam.root}category/Spring/1" onclick=$("#menu-close").click(); >Spring</a>
		</li>
		<li><a href="${initParam.root}category/Database/1" onclick=$("#menu-close").click(); >Database</a>
		</li>
		<li><a href="${initParam.root}category/Book/1" onclick=$("#menu-close").click(); >Book & Movie</a>
		</li>
		<li><a href="${initParam.root}category/etc./1" onclick=$("#menu-close").click(); >etc.</a>
		</li>
		<sec:authorize access="isAuthenticated()">
			<li><a href="${initParam.root}writeForm" onclick=$("#menu-close").click(); >Post Article</a>
			</li>
		</sec:authorize>
	</ul>
</nav>
