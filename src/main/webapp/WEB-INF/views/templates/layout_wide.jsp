<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Default Layout</title>
<script src="${initParam.root}resources/js/jquery-1.11.3.min.js"></script>
<script src="${initParam.root}resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${initParam.root}resources/css/custom.css">
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap-theme.min.css">
</head>
<body data-spy="scroll" data-target="#menuRight">
	<div id="container">
		<div id="header" class="container">
			<div class="row">
				<tiles:insertAttribute name="header"></tiles:insertAttribute>
			</div>
		</div>
		<div id=main class="container">
			<div class="row">
				<tiles:insertAttribute name="main"></tiles:insertAttribute>
			</div>
		</div>
		<div id="footer" class="container">
			<div class="row">
				<tiles:insertAttribute name="footer"></tiles:insertAttribute>
			</div>
		</div>
	</div>
</body>
</html>