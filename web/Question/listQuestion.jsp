<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 9/18/16
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="../Users/css/tablecss.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

<html style="background-color: cornsilk">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <title>LIst  of the questions</title>
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>
<%@ include file="../header.jsp"%>
<h2 class="ulist1">Question list</h2>

<div id="tableWrapper" class="table-responsive">

    <table id="listTable" cellpadding="1" class="table table-bordered">

        <tr id="up">
            <th>ID</th>
            <th>Questions</th>
            <th>Option1</th>
            <th>Option2</th>
            <th>Option3</th>
            <th>Option4</th>
            <th>CorrectAns</th>
            <th>Update</th>
            <th>Delete</th>


        </tr>
        <c:forEach items="${questionQuiz}" var="questionQuiz">
            <tr id="down">
                <td><c:out value="${questionQuiz.id}"/></td>
                <td><c:out value="${questionQuiz.question}"/></td>
                <td><c:out value="${questionQuiz.option1}"/></td>
                <td><c:out value="${questionQuiz.option2}"/></td>
                <td><c:out value="${questionQuiz.option3}"/></td>
                <td><c:out value="${questionQuiz.option4}"/></td>
                <td><c:out value="${questionQuiz.correctAns}"/></td>
                <td><a href="question?page=update&id=<c:out value="${questionQuiz.id}"/>" class="btn btn-primary">Edit</a></td>
                <td><a href="question?page=delete&id=<c:out value="${questionQuiz.id}"/>"class="btn btn-danger"> Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="AddNewQustion">
    <a href="question?page=addQuestion" class="navown">Add New question</a>
</div>
<div id="templatemo_footer">
    Quiz Appication
</div>
</body>
</html>
