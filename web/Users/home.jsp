<%@ page import="Domain.User" %><%--
  Created by IntelliJ IDEA.
  User: ashmitakunwar
  Date: 8/29/16
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: white">

<head>
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>

<%@ include file="../header.jsp"%>
<div id="ServicesTemplate">

    <table id="SubjectTable" border="1px solid" cellpadding="2px">
         <%--<tr>--%>
             <%--<td><img src="../Users/images/Biology.png" height="250px" width="550px" alt="Biology"></td>--%>
             <%--<td><img src="../Users/images/Chemistry.jpg" height="250px" width="500px"alt="Chemistry"></td>--%>
         <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><img src="../Users/images/Physics.png" height="250px" width="550px" alt="Physics"></td>--%>
            <%--<td><img src="../Users/images/Math.png" height="250px" width="550px" alt="Math"></td>--%>
        <%--</tr>--%>
        <p>This is the quiz app. where the question appear randomly </p>
    </table>
</div>
<div id="templatemo_footer">
    Quiz Appication
</div><!-- end of footer -->

</body>
</html>
