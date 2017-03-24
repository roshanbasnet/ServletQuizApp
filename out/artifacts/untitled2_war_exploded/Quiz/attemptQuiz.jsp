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
    <title>Attempt Quiz</title>
</head>

<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>

<%@ include file="../header.jsp"%>

<div id="tableWrapper">

    <table id="listTable" cellpadding="1">

        <tr id="up">
            <th>ID</th>
            <th>Questions</th>
            <th>Option1</th>
            <th>Option2</th>
            <th>Option3</th>
            <th>Option4</th>



        </tr>

            <tr id="down">
                <td><c:out value="${questionQuiz.id}"/></td>
                <td><c:out value="${questionQuiz.question}"/></td>
                <td><c:out value="${questionQuiz.option1}"/></td>
                <td><c:out value="${questionQuiz.option2}"/></td>
                <td><c:out value="${questionQuiz.option3}"/></td>
                <td><c:out value="${questionQuiz.option4}"/></td>

            </tr>

    </table>
</div>

</body>
</html>
