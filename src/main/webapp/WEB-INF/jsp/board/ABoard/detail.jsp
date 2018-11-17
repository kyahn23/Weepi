<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Weepi</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap/bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/board/quiz/dailyquizlist.css"/>" />
<%-- <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script> --%>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

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
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<h3>상세</h3>
				<br>
				<div class="panel panel-default" style="margin-bottom: 10px">
					<div class="panel-heading">
						<h3 class="panel-title">${board.title}</h3>
					</div>
					<div class="panel-heading">
						${board.writer} <span><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></span>
						<div style="float: right">
							<span>조회 ${board.viewCnt}회</span> <span id="rc"></span>
						</div>
					</div>
					<div class="panel-body detailcontent" style="min-height: 400px">${board.content}
					</div>
				</div>
				<div class="text-right">
					<a class="btn btn-default" href="writeForm.do">글쓰기</a> 
					<a class="btn btn-default" href="list.do">목록</a>
<!-- 					<button class="btn btn-default rec"></button> -->
					
<%-- 					<c:if test="${user.nickname==qna.writer}"> --%>
					<a class="btn btn-default" href='updateForm.do?no=${board.no}'>수정</a> 
					<a class="btn btn-default" href='delete.do?no=${board.no}'>삭제</a>
<%-- 					</c:if> --%>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
			
			<!-- row end -->
		</div>
	</section>
	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp" />
	<script>
		/* paging 설정하기 !! */
		$(".pagination > li:eq(0) > a").click(function(e){
			if(!${pageResult.prev}){
				e.preventDefault();
			}
		});
		$(".pagination > li:last > a").click(function(e){
			if(!${pageResult.next}){
				e.preventDefault();
			}
		});
		
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