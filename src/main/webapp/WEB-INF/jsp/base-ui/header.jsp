<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<link rel="stylesheet" href="/weepi/resources/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/weepi/resources/css/base-ui/header.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="/weepi/resources/js/bootstrap.js"></script>
</head>
<body>
	<header> <!--header --> <nav class="navbar navbar-default">
	<div class="contatiner-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only"></span> <span class="icon-bar"></span> 
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/index.jsp"/>">WEEPI</a>
		</div>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">A!!<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/board/quiz/dqlist.do"/>">a1</a></li>
					<li><a href="<c:url value="/board/quiz/uqlist.do"/>">a2</a></li>
					<li><a href="<c:url value="/board/rank/rank.do"/>">a3</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">O!!<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/board/quiz/dqlist.do"/>">o1</a></li>
					<li><a href="<c:url value="/board/quiz/uqlist.do"/>">o2</a></li>
					<li><a href="<c:url value="/board/rank/rank.do"/>">o3</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">L!!<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value="/board/quiz/dqlist.do"/>">l1</a></li>
					<li><a href="<c:url value="/board/quiz/uqlist.do"/>">l2</a></li>
					<li><a href="<c:url value="/board/rank/rank.do"/>">l3</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${user == null}">
				<li><a href="#" data-target="#login" id="log" data-toggle="modal">로그인</a></li>
				<li><a href="<c:url value="/user/signUpForm.do" />">회원가입</a></li>
			</c:if>
			<c:if test="${user != null}">
				<li><a href="<c:url value="/user/myPage.do"/>">마이페이지</a></li>
	            <li><a href="<c:url value="/login/logout.do"/>">로그아웃</a></li>
            </c:if>
		</ul>
	</div>
	</nav><!--header end --> </header>
	<!-- login menu -->
	<div class="row">
		<div class="modal" id="login" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						로그인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<div class="form-login">
							<form id="loginForm" action="<c:url value="/login/login.do"/>" method="post">
								<h1>로그인~</h1>
								<br> <input type="text" name="id"
									class="form-control input-sm chat-input" placeholder="아이디" /> <br>
								<input type="password" name="password"
									class="form-control input-sm chat-input" placeholder="비밀번호" />
								<br>
								<br>
								<div class="wrapper">
									<span> 
										<button id="doLogin" class="btn btn-primary btn-lg">로그인</button>
									</span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
 	<script type="text/javascript">
 		$("#log").on("click", function(e) {
 			$("#loginForm").find("input[name='id']").focus();
		});
 	
		$("#doLogin").on("click", function(e) {
			e.preventDefault();
			var id = $("#loginForm").find("input[name='id']").val();
			var password = $("#loginForm").find("input[name='password']").val();
			
			$.ajax({
				url: "/cocain/login/login.do",
				data: {id: id, password: password},
				type: "post"
			})
			.done(function(user) {
				console.log(user);
				if(user == "") {
					alert("아아디 또는 비밀번호를 잘못 입력하셨습니다.");

					return;
				} else {
					alert("로그인 되었습니다.");
					$("#login").modal("hide");
					var url = "${requestScope['javax.servlet.forward.request_uri']}";
					if(url == "/cocain/user/signUpForm.do") {
						location.href = "/cocain/main/main.do";
						return;
					}
					location.href = "${requestScope['javax.servlet.forward.request_uri']}";
				}
			})
		});
		
	</script> 
</body>
</html>