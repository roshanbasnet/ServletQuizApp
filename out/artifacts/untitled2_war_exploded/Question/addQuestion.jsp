<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 9/18/16
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html style="background-color: white">
<head>
    <link rel="stylesheet" type="text/css" href="../Users/css/templeteMenu.css">
    <title>Add questions</title>
</head>
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
    * {
        -webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        box-sizing: content-box;
    }
    *:before,
    *:after {
        -webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        box-sizing: content-box;
    }

</style>
</head>
<body>
<div id="h6id">
    <h5>Welcome ${user.username}</h5>
</div>

<%@ include file="../header.jsp"%>
<%--<h2 class="ulist1">ADD QUESTIONS</h2>--%>
<div class="form1">
    <fieldset>
        <legend><strong>Add NEW QUESTIONS</strong></legend>
        <form method="post" action="storeQuestion">
            <input type="hidden" name="page" value="storeQuestion"/>

            <div class="form-group">
                <div style="margin-left: 20%; margin-right: 15%">
                   <div class="row">
                       <div class="col-md-6">
                          <b> Question: </b>
                       </div>
                       <div class="col-md-6">
                           <input type="text" class="form-control" id="queestion" name="question" placeholder="Enter question" required>
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
                            <input type="text" class="form-control" id="option1" name="option1" placeholder="Enter Option1" required>
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
                            <input type="text" class="form-control" id="option2" name="option2" placeholder="Enter Option2" required>
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
                            <input type="text" class="form-control" id="option3" name="option3" placeholder="Enter Option3" required>
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
                            <input type="text" class="form-control" id="option4" name="option4" placeholder="Enter Option4" required>
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
                            <input type="text" class="form-control" id="correctAns" name="correctAns" placeholder="Enter CorrectAns" required>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-6" for="correctAns">Correct Ans:</label>--%>
                <%--<div class="">--%>
                    <%--<input type="text" class="form-control" name="correctAns" id="correctAns" placeholder="Enter the correct ans">--%>
                    <%--&lt;%&ndash;<select name="correctAns" id="correctAns">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="option1">Option1</option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="option2">Option2</option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="option3">Option3</option>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<option value="option4">Option4</option>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="col-sm-8">
                    <button type="submit" class="btn btn-primary ">Add Question</button>
                </div>
            </div>
        </form>
    </fieldset>
</div>
<div id="templatemo_footer">
    Quiz Appication
</div>
</body>
</html>
