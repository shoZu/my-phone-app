<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 28.07.2019
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyPhone</title>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/components/header.jsp" %>
<div class="row" style="padding-top: 10px">
    <div class="col-sm-2" style="padding-left: 60px">
        <img src="${product.imagePath}" alt="${product.brand} ${product.model} picture"
             width="134"
             height="192">
    </div>
    <div class="col-sm-7">
        <h1>${product.brand} ${product.model}</h1>
        <h6>System operacyjny:${product.operatingSystem}</h6>
        <h6>Przednia kamera:${product.primaryCameraMp}</h6>
        <h6>Tylna kamera:${product.secondaryCameraMp}</h6>

    </div>
    <div class="col-sm-2">
        <fmt:setLocale value="pl_PL"/>
        <h4><b><fmt:formatNumber value="${product.price}" type="currency"
                              minFractionDigits="2"/></b></h4>

            <div class="row">
                <form action="/dodaj-do-koszyka" method="POST">
                    <button type="submit" class="btn btn-default" name="productId" value="${product.id}">DO KOSZYKA
                    </button>
                </form>
            </div>
            <div class="row" style="padding-top: 5px">
                <form action="/kup" method="POST">
                    <button type="submit" class="btn btn-default" name="productId" value="${product.id}">KUP TERAZ
                    </button>
                </form>
            </div>

    </div>
</div>

<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>
</body>
</html>
