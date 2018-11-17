<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>CoCaIn</title>

<style>
.ck-editor__editable {
	min-height: 500px;
}
</style>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap/bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/board/quiz/dailyquizlist.css"/>" />
<%-- <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script> --%>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- <script -->
<!-- 	src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script> -->
<script src="<c:url value="/resources/ckeditor5/ckeditor.js"/>"></script>
</head>

<body>
	<c:import url="/WEB-INF/jsp/base-ui/header.jsp" />
	<section>
		<div class="aside">
			<div class="sidebar">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="#">A!!</a></li>
					<li role="presentation" class="active"><a href="#"> <i
							class="fas fa-folder"></i> 게시판1
					</a></li>
					<li role="presentation"><a href="<c:url value="uqlist.do"/>">
							<i class="fas fa-folder"></i> 게시판2
					</a></li>
					<li role="presentation"><a
						href="<c:url value="/board/rank/rank.do"/>"> <i
							class="fas fa-folder"></i> 게시판3
					</a></li>
				</ul>
			</div>
		</div>

		<div class="section">
			<div class="row">
				<form action="update.do" method="post" onsubmit="return doCheck()">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<h3>글 수정하기</h3>
						<br>
						<div class="panel panel-default">
							<input type="hidden" name="writer" value="${board.writer}">
							<input type="hidden" name="no" value="${board.no}">
							<div class="panel-heading">
								<select>
									<option>잡담</option>
									<option>질문</option>
								</select>
								<input type="text" class="form-control" name="title"
									value="${board.title }">
							</div>
							<div class="panel-body">
								<textarea id="editor" name="content">${board.content }</textarea>
							</div>
						</div>
						<div class="text-center">
							<button class="btn btn-default">등록</button>
							<a class="btn btn-default" href="list.do">취소</a>
						</div>
					</div>
					<div class="col-md-1"></div>
				</form>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp" />
	<script>
	

	ClassicEditor
		.create( document.querySelector( '#editor' ),{
			height : 500
		} )
		.catch( error => {
			console.error( error );
		} );

	CKEDITOR.replace( 'editor1', {
        height: 260,
        width: 700
    } );
		
		/* 미설정 체크  */
		function doCheck(){
			if($("input[name='keyword']").val()==""){
				alert("검색어를 입력하세요");
				$("input[name='keyword']").focus();
				return false;
			}
		}
	</script>
</body>

</html>