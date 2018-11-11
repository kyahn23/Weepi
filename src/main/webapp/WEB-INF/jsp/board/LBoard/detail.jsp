<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${board.no}번 게시글</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	th {
		width: 120px;
	}
</style>
</head>
<body>
	<h2>${board.no}번 게시글</h2>
	<hr>
	<table class="table">
		<tr>
			<th>카테고리</th>
			<td colspan="1">${board.category}</td>
			<th>제목</th>
			<td colspan="3">${board.title}</td>
			<th>작성자</th>
			<td>${board.writer}</td>
			<th>작성일</th>
			<td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></td>
			<th>조회수</th>
			<td>${board.viewCnt}</td>
		</tr>
		<tr>
			<th rowspan="5">내용</th>
			<td rowspan="5" colspan="11">${board.content}</td>
		</tr>
	</table>
</body>
</html>