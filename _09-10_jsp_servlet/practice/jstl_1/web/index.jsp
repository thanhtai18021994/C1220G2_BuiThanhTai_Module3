<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/convertmoney" method="get">
    <input type="number" name="money">
    <input type="number" name="moneyConvert" value="${newmoney}">
    <input type="submit">
  </form>
  </body>
</html>
