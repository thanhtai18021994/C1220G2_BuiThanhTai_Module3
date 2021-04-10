<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/dictionary" method="get">
    <input type="text" name="word">
    <input type="text" value="${newWord}">
    <input type="submit">
  </form>
  </body>
</html>
