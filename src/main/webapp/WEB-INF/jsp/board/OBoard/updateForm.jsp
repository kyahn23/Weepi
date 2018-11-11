<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
</head>
</head>
<body>
	  <h1>Document editor</h1>
	<form action="update.do" method="post" >
		<input type='hidden' name='no' value='${board.no}' />
		<input type="hidden" name="category" value="a">
		*글제목 : <input type="text" name="title" value="${board.title}">
    <div>
   		<textarea rows="80" cols="7" id="editor" name="content" >${board.title}</textarea>
    </div>
	<button>글수정</button>
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