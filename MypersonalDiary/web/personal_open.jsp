<%-- 
    Document   : personal_open
    Created on : Nov 9, 2020, 1:44:12 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal journal</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container main" >
            <form action="personal_open" method="post" >
                <h3>Register</h3>
                <div class="form-group">
                    Enter Name of Journal: <input type="text" class="form-control" name="name"  required=""><br>
                     
                    <button type="submit" class="btn-primary">Submit</button><br>
                    
                    <c:choose>
                        <c: when test="${cookie.journal_title.getValue() != null}">
                            <div class="container-fluid">
                                <h2>${cookie.journal_title.getValue()}</h2>
                                <textarea>${cookie.journal_text.getValue()}</textarea>
                            </div>
                        
                        
                        </c:>
                        
                    </c:choose>
                    
                </div>
            </form>
        </div>
    </body>
</html>
