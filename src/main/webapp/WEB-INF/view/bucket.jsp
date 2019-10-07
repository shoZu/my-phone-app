<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/3.4.0/css/bootstrap.min-jsf.css" rel="stylesheet">
    <title>MyPhone</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <%@include file="/WEB-INF/components/header.jsp" %>
    </div>
    <div class="row" style="padding-top: 20px">
        <div class="col-sm-9"><h3>Twoje zakupy</h3></div>
        <div class="col-sm-3"><h3>Cena</h3></div>
    </div>
    <div class="row" style="padding-top: 20px">
        <div class="col-sm-12">
            <c:forEach items="${products}" var="product">
                <div class="row" style="padding-top: 10px">
                    <div class="col-sm-2">
                        <img src="${product.imagePath}" alt="${product.brand} ${product.model} picture"
                             width="134"
                             height="192">
                    </div>
                    <div class="col-sm-7">
                        <h1><a style="color: #404040;"
                               href="/produkt?id=${product.id}">${product.brand} ${product.model}</a></h1>

                    </div>
                    <div class="col-sm-3">
                        <fmt:setLocale value="pl_PL"/>
                        <h4><fmt:formatNumber value="${product.price}" type="currency" minFractionDigits="2"/></h4>
                        <form action="/usun-z-koszyka" method="POST">
                            <button type="submit" class="btn btn-default" name="productId" value="${product.id}">USUN Z
                                KOSZYKA
                            </button>
                        </form>
                    </div>
                </div>
            </c:forEach>
            <h3>Razem do zapłaty:<b> <fnt:formatNumber value="${toPay}" type="currency" minFractionDigits="2"/></b></h3>
            <c:choose>
                <c:when test="${isLogin}">
                    <form action="/kup-i-zaplac" method="post">
                        <button type="submit" class="btn btn-danger" value="${product.id}" >Kup i zaplac
                        </button>
                    </form>
                </c:when>
                <c:otherwise>
                    <form action="/login" method="post">
                        Aby dokonać zakupu musisz być zalogowany
                        <button type="submit" class="btn btn-primary" name="productId">Zaloguj się</button>
                        </br>
                    </form>
                    <form action="/rejestracja">
                        Jeśli nie masz konta zarejestruj się
                        <button type="submit" class="btn btn-success" name="productId">Zarejestruj się</button>
                    </form>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>

</body>
</html>