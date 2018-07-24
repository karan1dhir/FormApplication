<%-- 
    Document   : home
    Created on : 19 Jul, 2018, 10:47:46 AM
    Author     : ngucc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="resources/css/form.css">
    </head>
    <body>
        <div>
            <form method="post" action="addUser">

                <label for="name">Name</label>                             
                <input type="text" id="name" placeholder="Enter your Name" name="uname" required>
                
                <label for="address">Address</label>        
                <input type="text" id="address" placeholder="Enter your Address" name="uaddress" required>
                
                <label for="age">Age</label>
                <input type="text" id="age" placeholder="Enter your age" name="uage" required>

                
                <label for="gender">Gender</label>
             
                    
                Male<input id="gender" type="radio" name="ugender" value="Male">   
                Female<input id="gender" type="radio" name="ugender" value="Female">
                
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
