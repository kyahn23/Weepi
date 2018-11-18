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
					<div class="table-responsive">
						<h3>목록</h3>
						<p>전체 ${listCount}건 ${pageResult.pageNo} 페이지</p>
						<!-- 					<p>전체 123건1 페이지</p> -->
						<table class="table" id="listtable">
							<thead>
								<tr>
									<th class="ln">번호</th>
									<th class="la">분류</th>
									<th class="title">제목</th>
									<th class="lw">작성자</th>
									<th class="ld">날짜</th>
									<th class="lv">조회수</th>
									<th class="lr">추천수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list.list}">
									<tr>
										<td class="ln">${list.no}</td>
										<td>잡담</td>
										<td><a href='detail.do?no=${list.no}'>${list.title }</a></td>
										<td>${list.writer }</td>
										<td class="ld"><fmt:formatDate value="${list.regDate}"
												pattern="yyyy-MM-dd" /></td>
										<td class="lv">${list.viewCnt}</td>
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
							<li
								<c:if test="${pageResult.prev eq false}">class="disabled"</c:if>>
								<a
								<c:choose>
								<c:when test='${requestScope["javax.servlet.forward.request_uri"].substring(18) eq "searchlist.do"}'>
									href="<c:url value="searchlist.do?pageNo=${pageResult.beginPage-1}&select=${search.select}&keyword=${search.keyword}"/>"
								</c:when>
								<c:otherwise>  
									href="<c:url value="list.do?pageNo=${pageResult.beginPage-1}"/>"								
								</c:otherwise>
							</c:choose>
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a>
							</li>
							<c:forEach var="i" begin="${pageResult.beginPage}"
								end="${pageResult.endPage}">
								<!-- 현재페이지 체크 불가 -->
								<li
									<c:if test="${i eq pageResult.pageNo}"> class="active"</c:if>>
									<a
									<c:choose> 
								<c:when test='${requestScope["javax.servlet.forward.request_uri"].substring(18) eq "searchlist.do"}'>
									href="<c:url value="searchlist.do?pageNo=${i}&select=${search.select}&keyword=${search.keyword}"/>"
									</c:when>
								<c:otherwise>
									href="<c:url value="list.do?pageNo=${i}"/>"
								</c:otherwise>
								</c:choose>>${i}</a>
								</li>
							</c:forEach>
							<li
								<c:if test="${pageResult.next eq false}">class="disabled"</c:if>>
								<a
								<c:choose>
									<c:when test='${requestScope["javax.servlet.forward.request_uri"].substring(18) eq "searchlist.do"}'>
										href="<c:url value="searchlist.do?pageNo=${pageResult.endPage+1}&select=${search.select}&keyword=${search.keyword}"/>"
									</c:when>
									<c:otherwise>
										href="<c:url value="list.do?pageNo=${pageResult.endPage+1}"/>"									
									</c:otherwise>
								</c:choose>
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a>
							</li>
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