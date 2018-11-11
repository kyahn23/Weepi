<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 작성</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
<style>
</style>
</head>
<body>
	<h2>게시물 작성</h2>
	<hr>
	<form action="/weepi/board/LBoard/write.do" method="post">
		<table class="table">
			<tr class="form-inline">
				<th><label for="category">카테고리</label></th>
				<td>
					<select name="category" id="category">
						<option value="freeboard">자유게시판</option>
					</select>
				</td>
				<th><label for="title">제목</label></th>
				<td><input type="text" name="title" id="title"/></td>
				<th><label for="writer">작성자</label></th>
				<td><input type="text" name="writer" id="writer" /></td>
			</tr>
			<tr>
				<th rowspan="5">내용</th>
				<td rowspan="5" colspan="5">
					<textarea name="content" id="editor"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="5"></td>
				<td><button class="btn btn-primary">저장</button></td>
			</tr>
		</table>
	</form>
	
	<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
	</script>
</body>
</html>