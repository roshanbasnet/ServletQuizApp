<%--
  Created by IntelliJ IDEA.
  User: ashmitakunwar
  Date: 9/15/16
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: white">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <title>Update user</title>
    <style>
        .form1{
            text-align: center;
            color: cornflowerblue;
            background-color: white;
            margin-left: 100px;
            margin-right: 100px;
        }
        h2{
            text-align: center;
        }
        h1{
            margin-left: 100px;
            text-align: center;
        }

    </style>
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>
<%@ include file="../header.jsp"%>
<%--<h2 class="ulist1">UPDATE USER</h2>--%>
<div class="form1">
<fieldset>
    <legend><strong>UPDATE USER</strong></legend>

    <div class="container">
        <form class="form-horizontal" method="post" action="editUser">
            <input type="hidden" name="page" value="editUser"/>
            <div class="form-group">
                <label class="control-label col-sm-4" for="id">ID:</label>
                <div class="col-sm-4">
                    <input type="number" class="form-control"name="id"value="${user.id}" id="id"  required>
                </div>
            </div>
           <div class="form-group">
                <label class="control-label col-sm-4" for="username">Username:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="username" name="username" value="${user.username}" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="pwd">Password:</label >
                <div class="col-sm-4">
                    <input type="password" class="form-control" id="pwd" name="password" value="${user.password}" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="role">Role:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="role" id="role" value="${user.role}" required>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary ">Update</button>
                </div>
            </div>
        </form>

    </div>
</fieldset>
</div>
</body>
</html>
