<%-- 
    Document   : personal
    Created on : Nov 8, 2020, 12:17:42 AM
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
        <style>
            
            bg{
                height: 100%;
                            }
            nav{
                background-color: #FF6666;
            }
            .navItem{
                   color: #581845 ;
                }
                  
            .navItem:hover{
                  color:#ff414e;
                  font-size:20px;
                }
                #delete_btn{
                    background-color: 	#CC0033;
                }
                #save_btn{
                    background-color: #00CC66;
                }
                #edit_btn{
                    background-color: #FF6666;
                }
                a.button {
                    -webkit-appearance: button;
                    -moz-appearance: button;
                    appearance: button;

                    text-decoration: none;
                    color: initial;
                    background-color: #00CC66;
                }
            
            
        </style>
    </head>
    <body class="bg">
        
        <div class="container-fluid bg ">
                <nav class="navbar ">
                    <ul class="navbar-nav">
                        <li class="nav-item navItem">
                                <a class="nav-item navItem" href='#' style="text-align:left; important"><strong><h1>${cookie.user_name.getValue()} Personal Journal</h1></strong></a>
                            </li>
                           
                            <li class="nav-item navItem">
                                <a class="nav-item navItem " href='personal_open.jsp'><strong>Open a journal</strong></a>
                        </li>
                    </ul>
                </nav>
        </div><br>
        <div class="container-fluid">
            <h4 style="color:#CC9910">Create a new journal</h4>
        </div>
         <form action="personal_open" >             
        <div class="container-fluid">
                   <textarea class="h1 input-clear" name="title" placeholder="Enter Title" title="Title" required pz-auto-size="" min-height="50" rows="1" style="height: 50px; width: 100%;"></textarea>
         </div>
            
        <div class="container-fluid"> 
            <textarea class="h5 input-clear" name="text" pz-auto-size="" min-height="50" rows="50" style="height: 300px; width: 100%;"></textarea>
        </div>
            
        <div class="container-fluid">
                <div class="btn-group btngp">
                    <button type="submit" class="btn" id="save_btn">Save</button>         
                    <button type="submit" class="btn" id="edit_btn">Edit</button>
                    <button type="submit" class="btn" id="delete_btn">Delete</button>
                    </form>
                </div>
            </div>
      
            
    </body>
</html>
