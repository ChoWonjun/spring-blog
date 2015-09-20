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
					<h1>Cho's Blog</h1>
					<hr class="small">
					<span class="subheading">“Before software can be reusable it
						first has to be usable.”<br><br>-Ralph Johnson-
					</span>
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
					<a href="${initParam.root}post/${post.postNo}">
						<h2 class="post-title">${post.title}</h2>
						<h3 class="post-subtitle">${post.subTitle}</h3>
					</a>
					<p class="post-meta">
						Posted in <a href="${initParam.root}category/${post.category}/1">${post.category}</a> category on
						${post.date}
					</p>
				</div>
				<hr>
			</c:forEach>

			<!-- Pager -->
			<ul class="pager">
				<c:if test="${page.currentPage != 1 }">
					<li class="previous"><a href="${initParam.root }recentPosts/${page.currentPage-1 }">&larr; Newer Posts</a></li>
				</c:if>
				<c:if test="${page.endRow < page.totalListSize }">
					<li class="next"><a href="${initParam.root }recentPosts/${page.currentPage+1 }">Older Posts &rarr;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<hr>
