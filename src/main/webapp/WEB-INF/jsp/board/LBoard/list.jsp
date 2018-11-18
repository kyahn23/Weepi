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
<title>글 목록</title>
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
					<li role="presentation"><a href="#">L!!</a></li>
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
				<div class="table-responsive">
					<h3>목록</h3>
<%-- 					<p>전체 ${listCount}건 ${pageResult.pageNo} 페이지</p> --%>
					<p>전체 123건1 페이지</p>
					<table class="table" id="listtable">
						<thead>
							<tr>
								<th class="ln">번호</th>
								<th class="la">분류</th>
								<th class="title">제목</th>
								<th class="lw">작성자</th>
								<th class="ld">작성일</th>
								<th class="lv">조회수</th>
								<th class="lr">추천수</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="b" items="${list}">
 							<tr>
								<td class="ln">${b.no}</td>
								<td>${b.category}</td>
								<td><a href='detail.do?no=${b.no}'>${b.title }</a></td>
								<td>${b.writer }</td>
								<td class="ld"><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
 								<td class="lv">${b.viewCnt}</td>
 								<td class="lr">1</td>
						</tr>
 							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
			<div class="row">
			<div class="col-md-1"></div>
				<div class="col-md-10">
					<a class="btn btn-default pull-right" href="writeForm.do">글쓰기</a>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row">
			<div class="col-md-1"></div>
				<div class="col-md-10">
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
				<div class="col-md-1"></div>
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
	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp" />
	<script>
		
	</script>
</body>

</html>