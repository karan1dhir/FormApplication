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

       <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.18/b-1.5.2/b-colvis-1.5.2/b-flash-1.5.2/b-html5-1.5.2/b-print-1.5.2/r-2.2.2/datatables.min.css"/>  
        <link rel="stylesheet" type="text/css" href="resources/css/form.css">
        <title>JSP Page</title>
    </head>
    <body>  
        <div class="display-main-content">
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
<!--                <input type="button" onclick="location.href = 'userDetails'" value="Add Users" style="display: block;margin: auto">-->
            </form>
            <script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>  
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
           <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
           <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.18/b-1.5.2/b-colvis-1.5.2/b-flash-1.5.2/b-html5-1.5.2/b-print-1.5.2/r-2.2.2/datatables.min.js"></script> 
           <script type="text/javascript" src="resources/js/main.js"></script>  
        </div>
    </body>
</html>
