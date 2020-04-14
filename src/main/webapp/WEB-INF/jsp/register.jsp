<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form Page</title>
        <!-- Latest compiled and minified CSS -->
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="css/maincss.css" rel="stylesheet"/>

        <script>
            $(document).ready(function () {
                $("#username").focusout(function () {
                    var username = $("#username").val();
                    alert(username);
                    $.ajax({
                        url: "checkusername/" + username,
                        success: function (result) {
                            $("#checkresult").html(result);
                        }});
                });
            });
        </script>
        <style>
            .error {
                color: #ff0000;
                font-style: italic;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <form:form cssClass="form-horizontal" action='doregister' method="POST" modelAttribute="registeruser">
                        <fieldset>
                            <div id="legend">
                                <legend class="">Register</legend>
                            </div>
                            <div class="control-group">
                                <!-- Username -->
                                <label class="control-label"  for="username">Username</label>
                                <div class="controls">
                                    <form:input path="username" cssClass="input-xlarge" id="username"/><spann id="checkresult"></spann>
                                    <span style="color: red"><strong>${wrongusername}</strong></span>
                                </div>
                            </div>
                            <div class="control-group">
                                <!-- Email-->
                                <label class="control-label" for="email">Email</label>
                                <div class="controls">
                                    <form:input path="email" cssClass="input-xlarge" type="email"/>
                                     <span style="color: red"><strong>${wrongemail}</strong></span>
                                </div>
                            </div> 
                            <div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Password</label>
                                <div class="controls">
                                    <form:input path="password" cssClass="input-xlarge" type="password"/>
                                     <span style="color: red"><strong>${wrongpass}</strong></span>
                                </div>
                            </div>
                            <div class="control-group">
                                <!-- Password-->
                                <label class="control-label" for="password">Retype Password</label>
                                <div class="controls">
                                    <form:input path="password2" cssClass="input-xlarge" type="password"/>
                                    <span style="color: red"><strong>${wrongpass2}</strong></span>
                                </div>
                            </div>
                            <br><br>
                            <div class="control-group">
                                <!-- Button -->
                                <div class="controls">
                                    <button class="btn btn-success">Register</button>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
