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
    </head>
    <body>
        <form method="post" action="addUser">
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
                <tr>    
                    <td>
                    <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
