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
         <script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script> 
         <script type="text/javascript" src="resources/js/validations.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/css/form.css">
    </head>
    <body>
        <div class="form-content">
            <form method="post" action="addUser" novalidate>

                <div>
                <label for="name">Name</label>                             
                <input class="form-input" type="text" id="name" placeholder="Enter your Name" name="uname" required>
                <span class="error" aria-live="polite" id="name-id"></span>
                </div>
                
                <div>
                <label for="address">Address</label>         
                <input class="form-input" type="text" id="address" placeholder="Enter your Address" name="uaddress" required>
                <span class="error" aria-live="polite" id="address-id"></span>
                </div>
                
                <div>
                <label for="age">Age</label>
                <input class="form-input" type="text" id="age" placeholder="Enter your age" name="uage" required>
                <span class="error" aria-live="polite" id="age-id"></span>   
                </div>
                
                
                <label for="gender" style="display: block">Gender</label>      
                <input class="form-input-radio gender-Male" id="gender" type="radio" name="ugender" value="Male">Male   
                <span class="gender-Female"><input class="form-input-radio" id="gender" type="radio" name="ugender" value="Female">Female</span>
                
                <input type="submit" value="Submit" class="btn-submit">
            </form>
        </div>
        
    </body>
</html>
