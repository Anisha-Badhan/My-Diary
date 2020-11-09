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
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css" type="text/css"/>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container" style="margin:100px; border:5px solid; border-color:#581845;height:400px; width:500px; padding:10px;" >
            <div class="row">
                
                 <form action="login" method="post" >
                     <Div class="container"><h2>Login</h2></Div>  
                     <br>             
                            <%if(request.getAttribute("Error")!=null){%>
                                <div class="col-12">
                                    <div class='alert alert-danger'>
                                        <strong>Login Failed!</strong> Wrong email/password.
                                    </div>
                                </div>
                                <%}%>
                               

            </div>
                <div class="form-group">
                    
                    Enter Your Email: <input type="email" class="form-control" name="email" required><br>
                    Enter Password: <input type="password" class="form-control" name="pwsd" required><br>
                    
                    <button type="submit" class="btn-success">Submit</button><br>
                    
                </div>
            </form>
            </div>
        </div>
    </body>
</html>
