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
    </head>
    <body>
        <form action="EditUserHelper?id=${userId}" method="POST">
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <input type="text" placeholder="Enter your Name" name="uname" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td>
                        <input type="text" placeholder="Enter your Address" name="uaddress" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age:
                    </td>
                    <td>
                <input type="text" placeholder="Enter your age" name="uage" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender:
                    </td>
                    <td>
                        Male<input type="radio" name="ugender" value="Male">
                        Female<input type="radio" name="ugender" value="Female">
                    </td>
                </tr>
            </table>
             <!--<a href="EditUserHelper?id=${userId}">Save to database</a>-->
  <input type="submit" value="Save to Db">
         </form>
    </body>
</html>
