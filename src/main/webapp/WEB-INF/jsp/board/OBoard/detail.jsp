<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DetailPage</h1>
	<hr>
	<div>
		글번호: ${board.no}
	</div>
	<div>
		글제목:${board.title }
	</div>
	<div>
		글내용:${board.content }
	</div>
	<div>
		조회수:${board.viewCnt}
	</div>
	<div>
		작성일자:<fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd" />
	</div>
	<button><a href="updateForm.do?no=${board.no}">글수정</a></button>
	<button><a href="list.do">목록</a></button>
	<button><a href="delete.do?no=${board.no}">글삭제</a></button>
</body>
</html>