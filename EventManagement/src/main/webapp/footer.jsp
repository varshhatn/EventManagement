<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .footer {
            background-color:hsla(220, 50%, 20%, 1);
            color: white;
            padding: 30px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            
           
            
        }
        .footer a {
            color: #ffc107;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        .footer h5 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <footer class="footer">
        <div class="container">
            <div class="row">
                
                <div class="col-md-3">
                    <h5>Contact</h5>
                    <p>Phone: <a href="tel:+1234567890">+123 456 7890</a></p>
                </div>
                
                <div class="col-md-3">
                    <h5>Email Us:</h5>
                    <p>Email: <a href="mailto:silverthreads@gmail.com">silverthreads@gmail.com</a></p>
                </div>
                
                <div class="col-md-3">
                    <h5>Feedback</h5>
                    <form>
                        <div class="mb-3">
                            <label for="feedbackName" class="form-label">Name</label>
                            <input type="text" class="form-control" id="feedbackName" placeholder="Your Name">
                        </div>
                        <div class="mb-3">
                            <label for="feedbackMessage" class="form-label">Message</label>
                            <textarea class="form-control" id="feedbackMessage" rows="3" placeholder="Your Feedback"></textarea>
                        </div>
                        <button type="button" class="btn btn-warning">Submit</button>
                    </form>
                </div>
                
                <div class="col-md-3">
                    <h5>Location</h5>
                    <p>123, RR Street,<br>Bangalore, Karnataka<br>India</p>
                </div>
            </div>
            <div class="text-center mt-4">
                <p class="mb-0">&copy; Silver Threads Event Management Company. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    