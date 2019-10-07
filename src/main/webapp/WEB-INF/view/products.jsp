<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div class="col-sm-2" style="padding-left: 50px">
            <%@include file="/WEB-INF/components/products-filter.jsp" %>
        </div>

        <div class="col-sm-10">
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
                        <h6>System operacyjny:${product.operatingSystem}</h6>
                        <h6>Przednia kamera:${product.primaryCameraMp}</h6>
                        <h6>Tylna kamera:${product.secondaryCameraMp}</h6>

                    </div>
                    <div class="col-sm-3">
                        <fmt:setLocale value="pl_PL"/>
                        <h4><fmt:formatNumber value="${product.price}" type="currency"
                                              minFractionDigits="2"/></h4>

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

            </c:forEach>
        </div>
    </div>
</div>
<script src="webjars/jquery/3.4.1/jquery.min.js"/>
<script src="webjars/bootstrap/3.4.0/js/bootstrap.min.js"/>

</body>
</html>