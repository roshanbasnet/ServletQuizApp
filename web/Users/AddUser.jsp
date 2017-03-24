<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 9/6/16
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html style="background-color: white">

<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">

    <title> Add New Users</title>
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
        }


    </style>
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>

<%@ include file="../header.jsp"%>
<%--<h2>ADD USERS</h2>--%>
<div class="form1">
<fieldset>
    <legend><strong>Add NEW USERS</strong></legend>
    <div class="container">
        <form class="form-horizontal" method="post" action="storeUser">
            <input type="hidden" name="page" value="storeUser"/>
            <div class="form-group">
                <label class="control-label col-sm-4" for="username">Username:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="pwd">Password:</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="role">Role:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="role" id="role" placeholder="Enter role" required>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary ">Add User</button>
                </div>
            </div>
        </form>

    </div>




</fieldset>
</div>
</body>
</html>
