<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 28.07.2019
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/components/header.jsp" %>

<div class="container-fluid">
    <div class="row" style="padding-left: 50px;">
        <form method="post" action="/uwierzytelnianie">
            Login: <input type="text" name="login">
            Hasło: <input type="password" name="password">
            <button type="submit" class="btn btn-success">Zaloguj się</button>
        </form>

        <form action="/rejestracja">
            <button type="submit" class="btn btn-success" name="productId">Zarejestruj się</button>

        </form>
    </div>
</div>
<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>
</body>
</html>
