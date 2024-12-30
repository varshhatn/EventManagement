<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<style>
		.carousel-item img {
            object-fit:contain;
            height: 500px;
            width: 100%;
        }
        .pics{
            margin-top: 10px;
        }
</style>
<body>

<%@include file="header.jsp" %>

<%@include file="navbar.jsp" %>
 <div class="pics">
    <div id="imageSlider" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="eventpic1.jpeg" class="d-block w-100" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="eventpic2.jpeg" class="d-block w-100" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="eventpic3.jpeg" class="d-block w-100" alt="Image 3">
            </div>
            <div class="carousel-item">
                <img src="eventpic4.jpeg" class="d-block w-100" alt="Image 4">
            </div>
            <div class="carousel-item">
                <img src="eventpic5.jpeg" class="d-block w-100" alt="Image 5">
            </div>
            <div class="carousel-item">
                <img src="eventpic6.jpeg" class="d-block w-100" alt="Image 6">
            </div>
            <div class="carousel-item">
                <img src="eventpic7.jpeg" class="d-block w-100" alt="Image 7">
            </div>
            <div class="carousel-item">
                <img src="eventpic8.jpeg" class="d-block w-100" alt="Image 8">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#imageSlider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#imageSlider" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    </div>
    
</body>
</html>