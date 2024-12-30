<%@page import="com.Event.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        #box1{
            width: 300px;
            margin-left: 10px;

        }
        #box{
            width: 300px;
        }
        .form{
            border: 3px double grey;
            width: 500px;
            height: 250px;
            padding-top: 30px;
            padding-left: 20px;
            margin-top: 50px;
            margin-left: 470px;
            position: absolute;
            background-color: hsla(201, 100%, 6%, 0.6);

        }
        .form:hover{
            border: 3px double grey;
            width: 500px;
            height: 250px;
            padding-top: 30px;
            padding-left: 20px;
            margin-top: 50px;
            margin-left: 470px;
            position: absolute;
            border-radius: 10px;
            background-color: hsla(201, 100%, 6%, 0.8);
        }
        #submit{
            padding: 3px;
            width: 100px;
            font-family:Arial, Helvetica, sans-serif;
            margin-left: 150px;
            font-size: medium;
        }
        #submit:hover{
            padding: 3px;
            width: 100px;
            font-family:Arial, Helvetica, sans-serif;
            margin-left: 150px;
            background-color: red;
            color: black;
            font-size: large;
            font-weight: 500;
        }
        #tag{
            padding-top: 150px;
            margin-left: 450px;
            color: black;
           
        }
        #tag:hover{
            padding-top: 150px;
            margin-left: 450px;
            text-decoration: underline;
            color: black;
            
        }
        #login{
            margin-left: 650px;
            padding-top: -50px;
            color: black;
            background-color: aliceblue;
            width: 85px;
           
        }
        h6{
            padding-left: 50px;
            color: beige;
        }
       body{
        background-image:url("loginevent.jpg");
        background-repeat: no-repeat;
        background-size: cover;
       }
       label{
        color: beige;
        font-size: larger;
       }
       a{
        color: beige;
       }
       a:hover{
        color: goldenrod;
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
    
    <h2 id="tag">SILVER THREAD EVENT MANAGEMENT</h2>
    
    <h3 id="login">LOGIN</h3>
    
    <% String success=(String)request.getAttribute("success");%>
        		<% if(success!=null){ %>
            <h3 class="success"><%=success %></h3>
            
            <%} %>
            
            <% String fail=(String)request.getAttribute("fail");%>
        		<% if(fail!=null){ %>
            <h3 class="fail"><%=fail %></h3>
            
            <%} %>
    <form action="login" method="post">
        <div class="form">
        <%Customer c=(Customer) session.getAttribute("Customer"); %>
            <label>Enter Email-ID: </label>
            <input type="mail" id="box1" placeholder="Enter your Mail ID" name="mail" required>
            <br><br>
            <label>Enter Password: </label>
            <input type="password" id="box" placeholder="Enter your password" name="password" required>
            <br><br>
            
            <input type="submit" id="submit" value="submit" name="submit">
            <br><br>
            <h6>Don't have an account? Click here to <a href="signup.jsp">SIGNUP</a></h6>

        </div>
    </form>
</body>
</html>