<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="${initParam.root}resources/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${initParam.root}resources/api/smarteditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		//전역변수선언
		var editor_object = [];

		nhn.husky.EZCreator
				.createInIFrame({
					oAppRef : editor_object,
					elPlaceHolder : "SE",
					sSkinURI : "${initParam.root}resources/api/smarteditor/SmartEditor2Skin.html",
					htParams : {
						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseToolbar : true,
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true,
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : true,
					}
				});

		//전송버튼 클릭이벤트
		$("#register_post_button").click(function() {
			//id가 smarteditor인 textarea에 에디터에서 대입
			editor_object.getById["SE"].exec("UPDATE_CONTENTS_FIELD", []);

			// 이부분에 에디터 validation 검증
			/* var title = $("#register_article_form :input[name=title]")
					.val();
			var content = $("#SE").val();
			var category = $("#articleCategory").val();
			var open = $("#articleOpen]").val();
			if (title.trim() == '') {
				alert('제목을 입력하세요');
				$("#register_article_form :input[name=title]").focus();
				return false;
			} else if (content.trim() == '') {
				alert('내용을 입력하세요');
				return false;
			} else if (category == '') {
				alert('카테고리를 선택하세요');
				return false;
			} else if (open == '') {
				alert('공개여부를 선택하세요');
				return false;
			} */
			//폼 submit
			$("#register_post_form").submit();
		});
	});
</script>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header"
	style="background-image: url('${initParam.root}resources/img/intro-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="page-heading">
					<h1>Post Article</h1>
					<hr class="small">
					<span class="subheading">Post your thinking.</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<form class="form-horizontal" role="form" id="register_post_form"
			name="register_post_form" action="${initParam.root}post"
			method="POST">

			<div class="form-group">
				<label for="categories" class="col-md-2 control-label">Categories</label>
				<div class="col-md-3">
					<select class="form-control" id="postCategory" name="category">
						<option>선택</option>
						<option value="IT">IT</option>
						<option value="Java">Java</option>
						<option value="Spring">Spring</option>
						<option value="Database">Database</option>
						<option value="Book">Book & Movie</option>
						<option value="etc.">etc.</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="title" class="col-md-2 control-label">Title</label>
				<div class="col-md-8">
					<input type="text" class="form-control" id="title" name="title"
						placeholder=" 제목">
				</div>
			</div>
			<div class="form-group">
				<label for="subTitle" class="col-md-2 control-label">Sub Title</label>
				<div class="col-md-8">
					<input type="text" class="form-control" id="subTitle" name="subTitle"
						placeholder=" 부제목">
				</div>
			</div>
			<div class="form-group">
				<label for="content" class="col-md-2 control-label">Content</label>
				<div class="col-md-8">
					<textarea id="SE" name="content"
						style="width: 100%; height: 412px;" rows="20" cols="30"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="open" class="col-md-2 control-label">Open</label>
				<div class="col-md-3">
					<select class="form-control" id="articleOpen" name="open">
						<option>선택</option>
						<option value="true">공개</option>
						<option value="false">비공개</option>
					</select>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<!-- submit btn -->
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<button id="register_post_button">Submit
							&rarr;</button>
				</ul>
			</div>
		</form>

	</div>
</div>

<hr>



