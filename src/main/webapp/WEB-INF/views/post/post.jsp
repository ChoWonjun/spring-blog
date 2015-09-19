<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<script>
	$(function() {
		$('#deleteBtn').click(function() {
			if (confirm("게시물을 삭제하시겠습니까?")) {
				$('#delete_article_form').submit();
			}
		});

		$('#updateBtn').click(function() {
			$('#update_article_form').submit();
		});
	});
</script>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header"
	style="background-image: url('${initParam.root}resources/img/about-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-heading">
					<h1>${post.title}</h1>
					<h2 class="subheading">Problems look mighty small from 150
						miles up</h2>
					<span class="meta">Posted by <a href="#">${post.category}</a>
						on ${post.date}
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
				${post.content}
			</div>
		</div>
	</div>
</article>

<hr>
