<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 11/18/16
  Time: 7:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html style="background-color: cornsilk">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <link rel="stylesheet" type="text/css" href="../Users/css/attemptQuiz.css">
    <title>Quiz Time</title>
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>
<%@ include file="../header.jsp"%>
<fieldset>
    <legend><strong>Attemp the Folloing Questions</strong></legend>
    <form action="" method="get" id="quizForm">
        <input type="hidden" name="page" value="playTime">
        <input type="hidden" name="correctAnswer" value="${questionQuiz.get(index).correctAns}">


        <table id="listTable" cellpadding="8">

            <tr id="down">
                <td><c:out value="${questionQuiz.get(index).question}"/></td></tr>
            <tr><td><input type="radio" name="answer" value="${questionQuiz.get(index).option1}" required><c:out value="${questionQuiz.get(index).option1}"/></td>
                <td><input type="radio" name="answer" value="${questionQuiz.get(index).option2}" required><c:out value="${questionQuiz.get(index).option2}"/></td></tr>
            <tr><td><input type="radio" name="answer" value="${questionQuiz.get(index).option3}" required><c:out value="${questionQuiz.get(index).option3}"/></td>
                <td><input type="radio" name="answer" value="${questionQuiz.get(index).option4}" required><c:out value="${questionQuiz.get(index).option4}"/></td>
            </tr>

        </table>
        <div id="quizbutton">
            <button name="index" value="${index+1}" class="btn btn-primary">Next</button>
        </div>


    </form>
</fieldset>

</body>
</html>
