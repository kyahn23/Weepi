<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>daily-quiz list</title>
 <link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap/bootstrap.css"/>" /> 
<link rel="stylesheet"
	href="<c:url value="/resources/css/board/quiz/dailyquizlist.css"/>" />
<%-- <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script> --%>
<%-- <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> --%>
</head>
<body>
	<!-- header.. -->
	<c:import url="/WEB-INF/jsp/base-ui/header.jsp"></c:import>
	<section>
		<div class="aside">
			<div class="sidebar">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="#">퀴즈게시판</a></li>
					<li role="presentation" class="active"><a href="#"> <i
							class="fas fa-folder"></i> 데일리퀴즈
					</a></li>
					<li role="presentation"><a href="<c:url value="dqlist.do"/>">
							&nbsp;&nbsp; <i class="fas fa-folder-open"></i> 문제
					</a></li>
					<li role="presentation"><a href="<c:url value="dqsubmit.do"/>">
							&nbsp;&nbsp; <i class="fas fa-folder"></i> 제출확인
					</a></li>
					<li role="presentation"><a href="<c:url value="uqlist.do"/>">
							<i class="fas fa-folder"></i> 유저퀴즈
					</a></li>
					<li role="presentation"><a
						href="<c:url value="/board/rank/rank.do"/>"> <i
							class="fas fa-signal"></i> 랭킹보기
					</a></li>
				</ul>
			</div>
		</div>

		<div class="section">
			<div class="row">
				<div class="col-md-12">
					<div class="table-responsive">
						<h3>게시판</h3>
						<p>전체 123건1 페이지</p>
						<table class="table" id="listtable">
							<thead>
								<tr>
									<th class="ln">번호</th>
									<th class="title">제목</th>
									<th class="lw">작성자</th>
									<th class="ld">날짜</th>
									<th class="lv">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${Olist}">
									<tr>
										<td>${list.no}</td>
										<td><a href='detail.do?no=${list.no}'>${list.title}</a></td>
										<td>${list.writer}</td>
										<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd" /></td>
										<td>${list.viewCnt}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<a class="btn btn-default pull-right" href="writeForm.do">글쓰기</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">
						<ul class="pagination">

							<li>&laquo;</li>

							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>

							<li>&raquo;</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<form class="form-inline" role="form" action="searchlist.do"
						method="post" onsubmit="return doCheck()">
						<div class="form-group">
							<select class="form-control" name="select">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="titlecontent">제목+내용</option>
								<option value="writer">작성자</option>
							</select>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="keyword"
								placeholder="검색어를 입력하세요">
						</div>
						<button type="submit" class="btn">검색</button>
					</form>
				</div>
			</div>
			<!-- row end -->
		</div>
	</section>



	<!-- footer.. -->
	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp"></c:import>

	<script>

	</script>


</body>
</html>