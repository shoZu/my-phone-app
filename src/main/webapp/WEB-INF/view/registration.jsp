<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 28.07.2019
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/components/header.jsp" %>
<div class="col-md-8" align="left">
    <form action="/rejestracja" method="POST">
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" class="form-control" id="login" name="login" required/>
        </div>

        <div class="form-group">
            <label for="name">Imię</label>
            <input type="text" class="form-control" id="name" name="name" required/>
        </div>

        <div class="form-group">
            <label for="surname">Nazwisko</label>
            <input type="text" class="form-control" id="surname" name="surname" required/>
        </div>

        <div class="form-group">
            <label for="email">Adres email</label>
            <input type="text" class="form-control" id="email" name="email" required/>
        </div>

        <div class="form-group">
            <label for="password">Hasło</label>
            <input type="password" class="form-control" id="password" name="password" required/>
        </div>

        <button type="submit" class="btn btn-primary">Zarejestruj się!</button>
    </form>
</div>
<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>
</body>
</html>
