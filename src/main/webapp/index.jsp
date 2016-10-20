<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Квадратное уравнение</title>
    <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
<form method="post" action="/discriminant">
    <div id="equation" align="center">
        <p>
            <input type="text" name="a" class="in"> * x<sup>2</sup> +
            <input type="text" name="b" class="in"> * x +
            <input type="text" name="c" class="in"> = 0
        </p>
        <p>
            <input type="submit" value="Решить" id="sub">
        </p>
        <p>
            ${resp}
        </p>
    </div>

</form>
</body>
</html>
