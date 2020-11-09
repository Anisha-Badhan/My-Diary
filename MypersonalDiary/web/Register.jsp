<%-- 
    Document   : Number
    Created on : Oct 28, 2020, 11:38:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container main"  >
            <form action="register" method="post" style="margin:100px; border:5px solid; border-color:#581845;height:400px; width:500px; padding:10px;" >
                <h3>Register</h3>
                <div class="form-group" >
                    Enter Your Name: <input type="text" class="form-control" name="name"  required ><br>
                    Enter Your Email: <input type="email" class="form-control" name="email" required ><br>
                    Enter Password: <input type="password" class="form-control" name="pwsd" required "><br>
                    
                    <button type="submit" class="btn-success">Submit</button><br>
                    
                </div>
            </form>
        </div>
    </body>
</html>
