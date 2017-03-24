<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 9/19/16
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="background-color: cornsilk">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <title>update questions</title>

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
<%--<h2>UPDATE QUESTION</h2>--%>
<div class="form1">
    <fieldset id="fieldset">
        <legend><strong>UPDATE User</strong></legend>
        <form method="post" action="editQuestion">
            <input type="hidden" name="page" value="editQuestion"/>
            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> ID: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="Id" name="id"value="${questionQuiz.id}" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Question: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="queestion" name="question"value="${questionQuiz.question}" required>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Option1: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="option1" name="option1"value="${questionQuiz.option1}" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Option2: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="option2" name="option2"value="${questionQuiz.option2}" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Option3: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="option3" name="option3"value="${questionQuiz.option3}" required>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Option4: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="option4" name="option4"value="${questionQuiz.option4}" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                    <div class="row">
                        <div class="col-md-6">
                            <b> Correct Ans: </b>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="correctAns" name="correctAns"value="${questionQuiz.correctAns}" required>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-4" for="correctAns">Correct Ans:</label>--%>
                <%--<div class="col-sm-4">--%>
                    <%--<input type="text" class="form-control" name="correctAns" id="correctAns" placeholder="Enter the correct ans">--%>
                <%--&lt;%&ndash;<select name="correctAns" id="correctAns">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="${questionQuiz.option1}">Option1</option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="${questionQuiz.option2}">Option2</option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="${questionQuiz.option3}"></option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="${questionQuiz.option1}">Option4</option>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary ">Update Question</button>
                </div>
            </div>

            <%--<label for="id">ID:</label>--%>
            <%--<input type="number" name="id" value="${questionQuiz.id}" id="id"><br>--%>
            <%--<label for="question">Question:</label>--%>
            <%--<input type="text" name="question"  value="${questionQuiz.question}" id="question"><br>--%>
            <%--<label for="option1">Option1:</label>--%>
            <%--<input type="option1" name="option1" value="${questionQuiz.option1}" id="option1"><br>--%>
            <%--<label for="option2">Option2:</label>--%>
            <%--<input type="option2" name="option2" value="${questionQuiz.option2}" id="option2"><br>--%>
            <%--<label for="option3">Option3:</label>--%>
            <%--<input type="option3" name="option3" value="${questionQuiz.option3}" id="option3"><br>--%>
            <%--<label for="option4">Option4:</label>--%>
            <%--<input type="option4" name="option4" value="${questionQuiz.option4}" id="option4"><br>--%>
            <%--<label for="correctAns">CorrectAns:</label>--%>
            <%--<select name="correctAns" id="correctAns">--%>
            <%--<option value="${questionQuiz.option1}">Option1</option>--%>
            <%--<option value="${questionQuiz.option2}">Option2</option>--%>
            <%--<option value="${questionQuiz.option3}">Option3</option>--%>
            <%--<option value="${questionQuiz.option4}">Option4</option>--%>
            <%--</select><br><br>--%>
            <%--<button type="submit">UPDATE</button>--%>
        </form>
    </fieldset>
    </div>
<div id="templatemo_footer">
    Quiz Appication
</body>
</html>
