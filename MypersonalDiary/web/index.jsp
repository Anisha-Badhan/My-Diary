<%-- 
    Document   : index
    Created on : Nov 4, 2020, 11:46:29 PM
    Author     : User
--%>

<%@page import="javax.servlet.http.Cookie"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<c:choose>
  <c:when test="{$Cookie['user_name'].getValue()==null}">
        <jsp:forward page="Login.jsp"></jsp:forward>
    </c:when>
</c:choose>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diary</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/95ffaf7659.js" crossorigin="anonymous"></script>
        <style>
            body, html {
                    height: 100%;
                  }

             .bg {
                    background-image: url("images/img-2.jpg");
                    height: 50%;
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: cover;
                  }
             .navItem{
                   color:black; 
                  }
                  
                  .navItem:hover{
                      color:#800000;
                      font-size:20px;
                  }
                  .navItem1:hover{
                      color:#800000;
                      font-size:25px;
                  }
                  h1{
                      color:#800000;
                  }
        </style>
    </head>
    <body>
        <div class="container-fluid bg ">
                <nav class="navbar navbar-expand-sm justify-content-end">
                    <ul class="navbar-nav">

                                               
                    <c:choose>
                                  
                    <c:when test="${cookie.user_name.getValue() != null}"  >
                     
                            <li class="nav-item ">
                                <a class="nav-item navItem" href='#'><h2><strong>Welcome ${cookie.user_name.getValue()}</strong></h2></a>
                            </li>
                           
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle " data-toggle="dropdown" href="#"><strong>MyDiaries</strong></a>
                                <div class="dropdown-menu">
                                  <a class="dropdown-item" href="personal.jsp">Personal</a>
                                  <a class="dropdown-item" href="professional.jsp">Professional</a>
                                  <a class="dropdown-item" href="holday.jsp">Holiday</a>
                                </div>
                              </li>
                            
                            <li class="nav-item ">
                              <a class="nav-link navItem" href="logout"><strong>Logout</strong></a>
                            </li>
                    </c:when>
                    </c:choose>
                    <c:choose>   
                            <c:when test="${cookie.user_name.getValue() == null}">
                            

                                <li class="nav-item ">
                                    <a class="nav-link navItem" href="Login.jsp" ><strong>Login</strong></a>
                                </li>

                                <li class="nav-item navItem">
                                    <a class="nav-link navItem" href ng-click="Register.jsp"><strong>Register</strong></a>
                                </li>

                    </c:when>
                    </c:choose>

                        
                    </ul>
                  </nav>
        </div>
        
            <div class="container ">
                <br><!-- comment -->
                <br>
                <h1><strong>My online Diary</strong></h1> 
                <h2> <strong>Store your ideas </strong></h2><!-- comment -->
                <h2><strong>Any where</strong</h2><!-- comment -->
                <h2><strong>Any time</strong></h2>
            </div>
    <footer>
        <div class="container-fluid" style="height:30px; background-color:#FF6666">
            <div class="row">   
           <div class="col-3"> <a href="#" style="color:black;">join us</a></div>
            <div class="col-3"> <a href="#" style="color:black;">follow us at :<i class="fab fa-facebook-f"> <i class="fab fa-twitter-square"></i></i></a></span></div>
            <div class="col-3"><a href="#" style="color:black;">contact us <i class="fas fa-phone-square"></i></a></div>
            <div class="col-3"><a href="#" style="color:black;">facts</a></div>
        </div>
        </div>
    </footer>
    <footer class="page-footer font-small" style="background-color:#581845 " >
        <div class="footer-copyright text-center py-3">© 2020 Copyright:<a href="#" style="color:#FF6666;"> myonlinediary.com</a>
        </div>
    </footer>
        
    </body>
</html>
