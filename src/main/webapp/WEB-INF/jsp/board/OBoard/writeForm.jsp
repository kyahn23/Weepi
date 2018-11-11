<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
<style type="text/css">
	.text{
		height: 600px;
	}
	.ck ck-content ck-editor__editable ck-rounded-corners ck-blurred ck-editor__editable_inline{
	height: 600px;
	}
</style>
</head>
<body>
	  <h1>Document editor</h1>
		<form action="write.do" method="post" >
			<input type="hidden" name="category" value="a">
				*글제목 : <input type="text" name="title" >
				*글쓴이 : <input type="text" name="writer" >
   			 <div class="text">
   				<textarea rows="80" cols="7" id="editor" name="content"></textarea>
    		</div>
		<button>글작성</button>
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