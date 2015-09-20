<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header"
	style="background-image: url('${initParam.root}resources/img/home-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="site-heading">
					<h1>Funk 2 Punk</h1>
					<hr class="small">
					<span class="subheading">A Personal Repository of Dreaming
						Developer</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
			<c:set var="page" value="${listContainer.page}" />
			<c:set var="list" value="${listContainer.list}" />
			<c:forEach var="post" items="${list}">
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">${post.title}</h2>
						<h3 class="post-subtitle">Problems look mighty small from 150
							miles up</h3>
					</a>
					<p class="post-meta">
						Posted in <a href="#">${post.category}</a>category on ${post.date}
					</p>
				</div>
				<hr>
			</c:forEach>

			<!-- Pager -->
			<ul class="pager">
				<li class="next"><a href="#">Older Posts &rarr;</a></li>
			</ul>
		</div>
	</div>
</div>

<hr>
