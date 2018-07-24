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
        <link type="text/css" href="https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.min.css" rel="stylesheet">
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
                <input type="button" onclick="location.href = 'userDetails'" value="Add Users" style="display: block;margin: auto">
            </form>
            <script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>  
            <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.2/swf/copy_csv_xls_pdf.swf"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.flash.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
            <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
            <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.html5.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.print.min.js"></script>      
            <script type="text/javascript" src="resources/js/main.js"></script>  
        </div>
    </body>
</html>
