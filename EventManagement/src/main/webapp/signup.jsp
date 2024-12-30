<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>singup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .form{
            width: 650px;
            height: 600px;
            border: 2px solid darkblue;
            padding: 30px;
            font-size: large;
            background-color: hsla(201, 100%, 6%, 0.6);
            margin-left: 50px;
            
        }
        .btn{
            text-align: center;
            margin-left: 250px;
        }
        
        .head{
            width: 1000px;
            background-color: white;
            color: black;
            text-align: center;
            margin-left: 250px;
            text-decoration: underline;
        }
        .parent{
            display: flex;
        }
        .card1{
            padding: 5px;

        }
        .tag{
            padding-left: 300px;
            text-decoration: underline;
        }
        .form-label{
            font-size: large;
            color: bisque;
        }
        .fail{
        color:red;
        }
        .success{
        color:green;
        }
    </style>
</head>
<body>
    <div class="head">
        <h2>SILVER THREAD EVENT MANAGEMENT</h2>
        
    </div>
    <div class="tag">
       <h4>SIGNUP</h4>
    </div>
    <% String success=(String)request.getAttribute("success");%>
        		<% if(success!=null){ %>
            <h3 class="success"><%=success %></h3>
            
            <%} %>
            
            <% String fail=(String)request.getAttribute("fail");%>
        		<% if(fail!=null){ %>
            <h3 class="fail"><%=fail %></h3>
            
            <%} %>
    <div class="parent">
    <div class="card1">

   
    <form action="signup" method="post" class="form">
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Full Name </label>
          <input type="text" class="form-control" id="exampleInputEmail1" name="name" aria-describedby="emailHelp" required>
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email ID </label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="mail" aria-describedby="emailHelp" required>
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Phone Number </label>
            <input type="tel" class="form-control" id="exampleInputEmail1" name="phone" aria-describedby="emailHelp" required>
          </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password </label>
          <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Confirm Password </label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="confirm" required>
          </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
          <label class="form-check-label" for="exampleCheck1">All the above details are True</label>
        </div>
        <button type="submit" class="btn btn-success" name="singup" value="signup">Signup</button>

    </form>
</div>
<div class="card1">
    <img src="signupevent.jpg" height="600px" width="790px">
</div>
</div>
</body>
</html>