<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Marriage</title>
</head>
<style>
		.carousel-item img {
            object-fit:contain;
            height: 500px;
            width: 100%;
        }
        .pic{
            margin-top: 10px;
            
        }
        #pic1{
        width:70%;
        height:500px;
        margin-top:2px;
        padding-left:450px;
        }
        .category{
        display:flex;
        justify-content:space-between;
        }
        .sub-category{
        border:1px solid black;
         width: 350px;
        box-shadow: 0px 0px 10px black;
        margin: 60px auto;
        border-radius: 5px;
        text-align: center;
        padding: 15px;
        
        }
        .sub-category1{
        border:1px solid black;
         width: 350px;
        box-shadow: 0px 0px 10px black;
        margin: 60px auto;
        border-radius: 5px;
        text-align: center;
        padding: 15px;
        } 
        #submit1{
            border: 2px solid black;
            width: 100px;
            font-size: large;  
        }
        #submit1:hover{
            border: 2px solid black;
            border-radius: 5px;
            width: 100px;
            font-size: large;
            font-weight: 700;
            background-color: gold;
        }
        h5{
        text-align:center;
        }
        
        input, h5{
        display:inline-block;
        }
        input1{
        width:150px;}
</style>
<body>

<%@include file="header.jsp" %>

<%@include file="navbar.jsp" %>
<div class="pic">
	<img src="eventpic2.jpeg" alt="marriage picture" id="pic1">
</div>
<form action="select" method="post"> 
<div class="category">
	<div class="sub-category">
		<img src="indoormarriage.jpg" alt="indoor marriage" width=250px height=250px>
		<br><br>
		<h5>Description: </h5>
		<h6>"It is an indoor marriage setup with full decor of your choice/our creativity"</h6>
		<h5>Name: </h5>
		<input id="input1" type="text" name="name" placeholder="Enter name">
		<br>
		<h5>Location:</h5>
		<input id="input1" type="text" name="location" placeholder="Enter location">
		<br>
		<h5>Date: </h5>
		<input id="input1" type="text" name="date" placeholder="Enter the date">
		<br><br>
		<h5><input type="submit" name="submit" value="SUBMIT" id="submit1"></h5>
	</div>
	<div class="sub-category1">
		<img src="outdoormarriage.jpg" alt="outdoor marriage" width=250px height=250px>
		<br><br>
		<h5>Description: </h5>
		<h6>"It is an outdoor marriage setup with full decor of your choice/ our creativity"</h6>
		<h5>Name: </h5>
		<input id="input1" type="text" name="name" placeholder="Enter name">
		<br>
		<h5>Location:</h5>
		<input id="input1" type="text" name="location" placeholder="Enter location">
		<br>
		<h5>Date: </h5>
		<input id="input1" type="text" name="date" placeholder="Enter the date">
		<br><br>
		<h5><input type="submit" name="submit" value="SUBMIT" id="submit1"></h5>
	</div>
</div>
</form>
</body>
</html>