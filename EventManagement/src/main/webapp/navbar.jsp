<%@page import="com.Event.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .navbar {
            background-color: blue; 
        }
        .navbar-brand {
           font-weight: bold;
        }
        
        .navbar-brand:hover {
           font-weight: bold;
           color: gold; 
        }
        .nav-link {
           color: white;
        }
        .nav-link:hover, .dropdown-item:hover {
           color: yellow; 
        }
        .collapse{
            padding-left: 800px;
        }
        .dropdown-item:hover{
        color:"yellow";}
        

    </style>
</head>
<body>
<%Customer c=(Customer)session.getAttribute("Customer"); %>

    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="dashboard.jsp">Welcome , <%=c.getName()%></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
                <li class="nav-item">
                <%if(c.getId()==1) {%>
                        <a class="nav-link" href="admindashboard.jsp">Admin</a>
                        
	<%} %>
                    </li>
               
	
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="dashboard.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="status.jsp"> Status</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Events
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <li><a class="dropdown-item" href="marriage.jsp">Marriage</a></li>
                            <li><a class="dropdown-item" href="videophoto.jsp">Videography/Photography</a></li>
                            <li><a class="dropdown-item" href="decor.jsp">Decorations</a></li>
                        </ul>
                    </li>
                </ul>
                <form action="logout" method="post">
       <input class="btn btn-outline-warning" id="logout" type="submit" name="logout" value="Logout">
       </form>
                
            </div>
        </div>
    </nav>

</body>
</html>