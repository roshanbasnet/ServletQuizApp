<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 11/21/16
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html style="background-color:cornsilk">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <link rel="stylesheet" type="text/css" href="../Users/css/resultStyle.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <title>Result Page</title>
</head>

<body>


<%@ include file="../header.jsp"%>
<h2 class="ulist1">Overall Result</h2>
<div id="resultshow">
    <fieldset>
        <%--<legend id="result1"><strong> Overall Result</strong></legend>--%>
        <form action="" method="get" id="Form">
            <div id="tableWrapper" class="table-responsive">
                <table id="" cellpadding="1" class="table table-bordered">
                    <tr id="up">
                        <th>Questions</th>
                        <th>CorrectAns</th>
                        <th>Attempted</th>
                    </tr>
                    <c:forEach items="${question}" var="tempResult">
                        <c:choose>
                            <c:when test="${tempResult.correctAns  == tempResult.answer}">
                                <tr class="label-success">
                                    <td><c:out value="${tempResult.question}"/></td>
                                    <td><c:out value="${tempResult.correctAns}"/></td>
                                    <td><c:out value="${tempResult.getAnswer()}"/></td>
                                </tr>
                            </c:when>
                            <c:when test="${tempResult.correctAns != tempResult.answer}">
                                <tr class="label-danger">
                                    <td ><c:out value="${tempResult.question}"/></td>
                                    <td><c:out value="${tempResult.correctAns}"/></td>
                                    <td><c:out value="${tempResult.answer}"/></td>
                                </tr>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </table>
            </div>
                <div id="scorecard">
                    <h2 style="background-color: white">Total Number of Questions attempted: ${totalQuestion}</h2>
                    <h2 style="background-color: white">Your Marks: ${marks}</h2>
                </div>
        </form>
        <div id="info">
            <li class="btn-success">Green:Correct</li>
            <li class="btn-danger">Red:Incorrect</li>
        </div>
    </fieldset>

</div>

<div id="templatemo_footer">
    Quiz Application
</div>
</body>
</html>
