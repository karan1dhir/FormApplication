<%-- 
    Document   : EditUser
    Created on : 20 Jul, 2018, 11:49:04 AM
    Author     : ngucc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="resources/css/form.css">
        <script src="main.js"></script>
    </head>
    <body>
        <div class="form-content">
        <form  action="EditUserHelper?id=${userId}" method="POST">

            
            <label for="name">Name</label>
            <input class="form-input" type="text" id="name" placeholder="Enter your Name" name="uname" required>

            <label for="address">Address</label>     
            <input class="form-input" type="text" id="address" placeholder="Enter your Address" name="uaddress" required>

            <label for="age">Age</label>   
            <input class="form-input" type="text" id="age" placeholder="Enter your age" name="uage" required>

            
            Male<input class="form-input-radio" type="radio" name="ugender" value="Male">
            Female<input class="form-input-radio" type="radio" name="ugender" value="Female">

            <input type="submit" value="Save to Database" class="btn-submit">
        </form>
        </div>
    </body>
</html>
