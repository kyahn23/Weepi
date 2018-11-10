<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cocain</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/cocain/resources/css/main/main.css">
  	<c:import url="/WEB-INF/jsp/base-ui/header.jsp"/> 
    <script src="/cocain/resources/js/jquery.animateNumber.js"></script>
</head>
<body>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="/cocain/resources/images/code-2620118_1920.jpg" alt="code">
            </div>
            <div class="item">
                <img src="/cocain/resources/images/비지니스.jpg" alt="비지니스">
            </div>
            <div class="item">
                <img src="/cocain/resources/images/technology.jpg" alt="technology">
            </div>
            <div class="item">
                <img src="/cocain/resources/images/web.png" alt="web">
            </div>
            <div class="item">
                <img src="/cocain/resources/images/webdesign.jpg" alt="webdesign">
            </div>
            <div class="carousel-content">
                <p class="text-center">CoCaIn은 코딩 커뮤니티 사이트입니다. <br>원하는 스터디 그룹 모집 및 지식을 공유할 수 있습니다.</p>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div> 
    <div class="row first-row">
        <div class="row-control">
            <div class="col-md-4">
                <div class="jumbotron">
                    <div class="content">
                        <h2 class="text-center post-count">
                            
                        </h2>
                        <h4 class="text-center">전체 게시물</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="jumbotron">
                    <div class="content">
                        <h2 class="text-center quiz-count">
                            
                        </h2>
                        <h4 class="text-center">전체 문제</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="jumbotron">
                    <div id="myCarousel-lank" class="carousel slide" data-ride="carousel" data-interval="3000">
                        <div class="carousel-inner">
                            <div class="item active">
                                <h2 class="text-center">
                                    <i class="fas fa-medal" style="color: gold"></i>&nbsp;&nbsp;33
                                </h2>
                                <h4 class="text-center">asdf</h4>
                            </div>
<%--                             <div class="item">
                                <h2 class="text-center">
                                    <i class="fas fa-medal" style="color: #c0c0c0"></i>&nbsp;&nbsp;${rank[1].nickname}
                                </h2>
                                <h4 class="text-center">퀴즈 랭킹</h4>
                            </div>
                            <div class="item">
                                <h2 class="text-center">
                                    <i class="fas fa-medal" style="color: #cd7f32"></i>&nbsp;&nbsp;${rank[2].nickname}
                                </h2>
                                <h4 class="text-center">퀴즈 랭킹</h4>
                            </div> --%>
                        </div>
<!--                         <a class="left carousel-control" href="#myCarousel-lank" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel-lank" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a> -->
                    </div> 
                </div>
            </div>
        </div>
    </div>
      	
  	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp"/>  
  
    <script>
    	var articleCount = ${articleCount};
    	var quizCount = ${quizCount};
    	
        var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(',')
        $('.post-count').animateNumber(
            {
                number: parseInt(articleCount),
                numberStep: comma_separator_number_step
            }, 2000
        );
        $('.quiz-count').animateNumber(
            {
                number: parseInt(quizCount),
                numberStep: comma_separator_number_step
            }, 2000
        );
    </script>

</body>
</html>