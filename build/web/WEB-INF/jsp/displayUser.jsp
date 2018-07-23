<%-- 
    Document   : displayUser
    Created on : 19 Jul, 2018, 2:08:10 PM
    Author     : ngucc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<title>JSP Page</title>
    </head>
    <body>
       
            
        <form>      
            <table id="table_id" class="cell-border compact stripe hover stripe order-column row-border">
                <thead>
                    <td>Name</td>
                    <td>Address</td>
                    <td>Age</td>
                    <td>Gender</td>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.uname}</td>
                    <td>${user.uaddress}</td>   
                    <td>${user.uage}</td>
                    <td>${user.ugender}</td>
                    <td><a href="editUser?id=${user.id}">Edit</a></td>
                    <td><a href="deleteUser?id=${user.id}">Delete</a></td>
                </tr>
                </c:forEach>
            </table>
            
              <input type="button" onclick="location.href='userDetails'" value="Add" align="center">
        </form>
        <script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>  
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
        <script type="text/javascript">
            $(document).ready( function () {
         $('#table_id').DataTable()
         
    });
       </script>
    </body>
</html>
