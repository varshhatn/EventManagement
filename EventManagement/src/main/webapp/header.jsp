<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            
        }
        .imgdiv{
            margin-left: 5px;
            border: 2px solid white;
            border-radius: 3px;
        }
        #h2check{
        color:white;
        font-weight: bold;}
        
    </style>
</head>
<body>
    <div class="head">
        <div class="imgdiv"><img src="logo.jpeg" alt="logo" width="70px" height="70px"></div>
        <h2 id="h2check">Silver Threads Event Management</h2>
        
    </div>
    
</body>
</html>