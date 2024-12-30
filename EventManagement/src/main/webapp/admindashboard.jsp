<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
   <style>
        .head{
            display: flex;
            justify-content: space-between;
            background-color:hsla(220, 50%, 20%, 1);
            padding-top: 3px;
            padding-bottom: 3px;
        }
        h2{
            padding-right: 900px;
            padding-top: 15px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: beige;
            
        }
        .imgdiv{
            margin-left: 5px;
            border: 2px solid white;
            border-radius: 3px;
        }
        
        .sidebar {
            width: 250px;
            background-color: rgb(25, 55, 111);
            min-height: 100vh;
            padding-top: 10px;
        }
        .sidebar a {
            color: whitesmoke;
            text-decoration: none;
            padding: 10px 15px;
            display: block;
            font-size: large;
            
        }
        .sidebar a:hover {
            background-color: #495057;
            font-weight: bold;
        }
        .dropdown-menu{
            background-color: #495057;
        }
        .dropdown-item{
            background-color: #495057;
            color: bisque;
        }
        .dropdown-item:hover{
            background-color: #495057;
            color: gold;
        }
        .parent{
            display: flex;
        }
        .card{
            padding-left: 5px;
            margin-left: -5px;
        }
        .card1{
        margin-left:20px;
        margin-top:30px;}
        
    </style>
</head>
<body>
    <div class="head">
        <div class="imgdiv"><img src="logo.jpeg" alt="logo" width="70px" height="70px"></div>
        <h2>Silver Threads Event Management</h2>
    </div>
    <div class="parent">
    
        <div class="card">
        
        <div class="sidebar">
            <a href="#">Dashboard</a>
            <div class="dropdown">
                <a class="dropdown-toggle" href="#" id="eventsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Events
                </a>
                <ul class="dropdown-menu" aria-labelledby="eventsDropdown">
                    <li><a class="dropdown-item" href="addevent.jsp">Add Event</a></li>
                    <li><a class="dropdown-item" href="deleteevent.jsp">Delete Event</a></li>
                    <li><a class="dropdown-item" href="viewallevents.jsp">View All Events</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <a class="dropdown-toggle" href="#" id="categoryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Events Category
                </a>
                <ul class="dropdown-menu" aria-labelledby="categoryDropdown">
                    <li><a class="dropdown-item" href="addcategory.jsp">Add Category</a></li>
                    <li><a class="dropdown-item" href="deletecategory.jsp">Delete Category</a></li>
                    <li><a class="dropdown-item" href="viewcategories.jsp">View all Categories</a></li>
                </ul>
            </div>
            <a href="viewallcustomers.jsp">View All Customers</a>
            <a href="dashboard.jsp">Login as Normal User</a>
            <a href="logout.jsp">Logout</a>
        </div>
        </div>
        <div class="card1">
            <h3 id="h3head">Welcome to Admin Dashboard, ABC </h3>
            </div>
        </div>
</body>
</html>