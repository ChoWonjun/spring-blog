<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Cho's Blog</title>

<!-- Bootstrap Core CSS -->
<link href="${initParam.root}resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${initParam.root}resources/css/clean-blog.min.css"
	rel="stylesheet">
<link href="${initParam.root}resources/css/stylish-portfolio.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href="${initParam.root}resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div>
		<div>
			<tiles:insertAttribute name="navigation"></tiles:insertAttribute>
			<tiles:insertAttribute name="pageHeader"></tiles:insertAttribute>
		</div>
		<div>
			<tiles:insertAttribute name="mainContent"></tiles:insertAttribute>
		</div>
		<div>
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</div>
	</div>

	<!-- jQuery -->
	<script src="${initParam.root}resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${initParam.root}resources/js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${initParam.root}resources/js/clean-blog.min.js"></script>

	<script>
		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});

		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
	</script>

</body>
</html>