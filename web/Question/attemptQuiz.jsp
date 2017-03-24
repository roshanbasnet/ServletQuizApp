<%--
  Created by IntelliJ IDEA.
  User: ashmitakunwar
  Date: 11/15/16
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html style="background-color: cornsilk">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <link rel="stylesheet" type="text/css" href="../Users/css/attemptQuiz.css">
    <title>Attempt Quiz</title>
</head>

<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>

<%@ include file="../header.jsp"%>
<button name="startPlay" id="quizPlayBtn"><a href="playTime?page=playTime&index=0&answer=null&correctAnswer=null"><b>START</b></a></button>

</body>
</html>
