<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 9/6/16
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html style="background-color: white">
<head>

    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <link rel="stylesheet" type="text/css" href="../Users/css/tablecss.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">


    <title>List of Users</title>
</head>

<body>
<div id="h6id">
    <h5>Welcome</h5>
</div>
<%@ include file="../header.jsp"%>

<h2 class="ulist">User list</h2>

<div id="tableWrapper" class="table-responsive">
    <table id="listTable" cellpadding="1" class="table table-bordered">

        <tr id="up">
            <th>ID</th>
            <th>USERNAME</th>
            <th>PASSWORD</th>
            <th>ROLE</th>
            <th>Edit</th>
            <th>Delete</th>

        </tr>
        <c:forEach items="${user}" var="user">
            <tr id="down">
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.username}"/></td>
                <td><c:out value="${user.password}"/></td>
                <td><c:out value="${user.role}"/></td>
                <td><a href="index?page=update&id=<c:out value="${user.id}"/>" class="btn btn-primary"> Edit</a></td>
                <td><a href="index?page=delete&id=<c:out value="${user.id}"/>" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="AddNewUser">
    <a href="index?page=addUser">Add New User</a>
</div>
<div id="templatemo_footer">
    Quiz Appication
</div><!-- end of footer -->





</body>
</html>
