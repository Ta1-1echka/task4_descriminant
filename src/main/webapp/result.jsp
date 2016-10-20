<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
        <head>
            <title>Результат</title>
            <link rel="stylesheet" type="text/css" href="index.css">
        </head>
<body>
<form method="post" action="index.jsp">
    <div id="equation" align="center">
        <p>Решение уравнения:</p>
        <p>
            ${a}*X<sup>2</sup>
            <c:if test="${b>0}">+${b}*X </c:if>
            <c:if test="${b<0}">${b}*X </c:if>
            <c:if test="${c>0}">+${c}</c:if>
            <c:if test="${c<0}">${c}</c:if> = 0

        </p>

        <p>
            D = b<sup>2</sup> - 4ac =
            <c:if test="${b>0}">${b}<sup>2</sup> </c:if>
            <c:if test="${b<0}">(${b})<sup>2</sup> </c:if>
            - 4 * <c:if test="${a>0}">${a} * </c:if>
            <c:if test="${a<0}"> (${a}) * </c:if>
            <c:if test="${c>0}">${c}</c:if>
            <c:if test="${c<0}">(${c})</c:if>
            <c:if test="${i==false}"> = ${d} > 0</c:if>
            <c:if test="${i}"> = -${d} < 0</c:if>

        </p>
        <c:if test="${i==false}">
            <p>
                x1 = (-b + √D) / 2a =
                <c:if test="${b>0}">(-${b} + √${d})</c:if>
                <c:if test="${b<0}">(-(${b}) + √${d})</c:if>
                <c:if test="${b==0}">√${d}</c:if>
                <c:if test="${a>0}">/(2*${a}) = ${x1}</c:if>
                <c:if test="${a<0}">/(2*(${a})) = ${x1}</c:if>

            </p>
            <p>
                x2 = (-b - √D) / 2a =
                <c:if test="${b>0}">(-${b} - √${d})</c:if>
                <c:if test="${b<0}">(-(${b}) - √${d})</c:if>
                <c:if test="${b==0}">√${d}</c:if>
                <c:if test="${a>0}">/(2*${a}) = ${x1}</c:if>
                <c:if test="${a<0}">/(2*(${a})) = ${x1}</c:if>

            </p>
        </c:if>
        <c:if test="${i}">
            <c:set var="aa" scope="session" value="${a*2}"/>
            <p>
                x1 = (-b + √D) / 2a =
                <c:if test="${b>0}">(-${b} + √${d} * i)</c:if>
                <c:if test="${b<0}">(-(${b}) + √${d} * i)</c:if>
                <c:if test="${b==0}">√${d} * i</c:if>
                <c:if test="${aa>0}">/${aa}</c:if>
                <c:if test="${aa<0}">/(${aa})</c:if>

            </p>
            <p>
                x2 = (-b - √D) / 2a =
                <c:if test="${b>0}">(-${b} - √${d}  * i)</c:if>
                <c:if test="${b<0}">(-(${b}) - √${d}  * i)</c:if>
                <c:if test="${b==0}">√${d} * i</c:if>
                <c:if test="${aa>0}">/${aa}</c:if>
                <c:if test="${aa<0}">/(${aa})</c:if>

            </p>
        </c:if>
        <p>
            <input type="submit" value="Решить еще одно уравнение">
        </p>
    </div>

</form>
</body>
</html>
