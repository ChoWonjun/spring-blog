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
			<ul class="nav navbar-nav navbar-right navbar-top-links">
				<li><a href="${initParam.root}">Home</a></li>
				<li class="dropdown" id="dropdown-btn"><a href="#"
					data-toggle="dropdown" class="dropdown-toggle">Board<span
						class="caret"></span></a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="${initParam.root}category/IT/1">IT</a></li>
						<li><a href="${initParam.root}category/Java/1">Java</a></li>
						<li><a href="${initParam.root}category/Spring/1">Spring</a></li>
						<li><a href="${initParam.root}category/Database/1">Database</a></li>
						<li><a href="${initParam.root}category/Book/1">Book</a></li>
						<li><a href="${initParam.root}category/etc./1">etc.</a></li>
						<sec:authorize access="isAuthenticated()">
						<li><a href="${initParam.root}writeForm">POST ARTICLE</a></li>
						</sec:authorize>
					</ul></li>
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
