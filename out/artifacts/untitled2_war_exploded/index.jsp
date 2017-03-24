<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Quiz APP</title>
  <link href="css/templatemo_style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="       css/bootstrap.min.css">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <script language="javascript" type="text/javascript">
    function showLoginDiv()
    {
      document.getElementById("loginDiv").style.display="";
    }
  </script>
</head>
<body>

<div id="templatemo_wrapper_outter">

  <div id="templatemo_wrapper_inner">

    <div id="templatemo_header">
      <h1>Online Quiz</h1>
    </div>
      <h3>${message}</h3>
      <h2 style="margin-left: 290px;">Login Form:</h2>
    <div class="container">
        <form class="form-horizontal" method="post" action="login">
            <input type="hidden" name="page" value="login">
            <div class="form-group">
                <label class="control-label col-sm-4" for="username">Username:</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="pwd">Password:</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary " style="margin-left: 290px;">Login</button>
                </div>
            </div>
        </form>

    </div>

</div> <!-- end of templatemo_wrapper_inner -->

</div> <!-- end of templatemo_wrapper_outter -->

</body>
</html>
