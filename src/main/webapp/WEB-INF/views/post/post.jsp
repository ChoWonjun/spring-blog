<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<script src="${initParam.root}resources/js/jquery.min.js"></script>
<script>
	$(function() {
		$('#deleteBtn').click(function() {
			if (confirm("게시물을 삭제하시겠습니까?")) {
				location.href="${initParam.root}delete/${post.postNo}";
			}
		});
	});
</script>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header"
	style="background-image: url('${initParam.root}resources/img/banner-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-heading">
					<h1>${post.title}</h1>
					<h2 class="subheading">${post.subTitle}</h2>
					<span class="meta">Posted in <a href="#">${post.category}</a>
						category on ${post.date}
					</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Post Content -->
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				${post.content}</div>
		</div>
		<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
			<ul class="pager">
				<sec:authorize access="isAuthenticated()">
					<li class="previous"><a
						href="${initParam.root }updateForm/${post.postNo}">update post</a></li>
					<li class="next"><a href="#" id="deleteBtn">delete post</a></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</article>

<hr>
