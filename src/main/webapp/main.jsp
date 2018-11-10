<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>weepi</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/weepi/resources/css/main/main.css">
  	<c:import url="/WEB-INF/jsp/base-ui/header.jsp"/> 
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
                <img src="/weepi/resources/images/code-2620118_1920.jpg" alt="code">
            </div>
            <div class="item">
                <img src="/weepi/resources/images/비지니스.jpg" alt="비지니스">
            </div>
            <div class="item">
                <img src="/weepi/resources/images/technology.jpg" alt="technology">
            </div>
            <div class="item">
                <img src="/weepi/resources/images/web.png" alt="web">
            </div>
            <div class="item">
                <img src="/weepi/resources/images/webdesign.jpg" alt="webdesign">
            </div>
            <div class="carousel-content">
                <p class="text-center">WEEPI!!!!!!!!!!</p>
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
    
      	
  	<c:import url="/WEB-INF/jsp/base-ui/footer.jsp"/>  
  

</body>
</html>