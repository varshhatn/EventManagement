<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>aboutus</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="styles.css">
    <style>
        
body {
    font-family: 'Arial', sans-serif;
}

.container{
margin-top:-100px;}
.hero-section {
    background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('hero-image.jpg') center/cover;
    color: white;
    height: 20vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.card {
    border: none;
    transition: transform 0.2s ease-in-out;
}

.card:hover {
    transform: scale(1.05);
}

footer p {
    margin: 0;
}

    </style>
</head>
<body>
    

    
<%@include file="header.jsp" %>

<%@include file="navbar.jsp" %>
    <div class="container-fluid bg-light text-center py-5">
        <h1 class="display-4">About Us</h1>
        <p class="lead">Your trusted partner for all events at your space</p>
    </div>

    <div class="container py-5">
        <div class="row align-items-center">
            <div class="col-md-6">
                <img src="evenmgt.jpeg" class="img-fluid rounded" alt="About Us">
            </div>
            <div class="col-md-6">
                <h2>Us</h2>
                <p>
                    We specialize in creating unforgettable experiences. With over years of expertise 
                    in event management, we bring your vision to life evne if it is a corporate gathering, wedding, photoshoots, 
                    or private party. Our team is dedicated to ensuring every detail is perfect and it is of your choice.
                </p>
                <h3>Our Mission</h3>
                <p>
                    To make you dreams come true with best quality and service!!!
                </p>
                <h3>Our Vision</h3>
                <p>
                    To be the best Event management company, celebrated for our creativity, customer's satisfaction.
                </p>
            </div>
        </div>
    </div>

    
    <div class="container py-5">
        <h2 class="text-center mb-4">Our Core Values</h2>
        <div class="row text-center">
            <div class="col-md-4">
                <div class="card shadow">
                    <div class="card-body">
                        <h4 class="card-title">Creativity</h4>
                        <p class="card-text">Innovative ideas to make your event outstanding.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow">
                    <div class="card-body">
                        <h4 class="card-title">Excellence</h4>
                        <p class="card-text">High standards in every aspect of event planning.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow">
                    <div class="card-body">
                        <h4 class="card-title">Integrity</h4>
                        <p class="card-text">Trustworthy service with maximum quality.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <footer class="bg-dark text-white py-3 text-center">
        <p class="mb-0">&copy; 2024 Eventify. All Rights Reserved.</p>
    </footer>

    
</body>
</html>
    