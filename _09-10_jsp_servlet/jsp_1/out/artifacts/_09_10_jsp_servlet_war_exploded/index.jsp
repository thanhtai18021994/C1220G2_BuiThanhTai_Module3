<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/9/2021
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/google">
    <input type="text" name="num1">
    <input type="text" name="num2">
    <input type="submit">
    <h3><%=request.getAttribute("c")%></h3>
  </form>
  </body>
</html>
