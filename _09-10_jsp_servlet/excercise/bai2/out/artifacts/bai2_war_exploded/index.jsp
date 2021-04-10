<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/cal" method="get">
    <input type="text" value="" name="num1">
    <select name="operator">
      <option value="cong">+</option>
      <option value="tru">-</option>
      <option value="nhan">x</option>
      <option value="chia">:</option>
    </select>
    <input type="text" value="" name="num2">
    <input type="submit">
    <input type="text" value="${Ketqua}" name="result">
  </form>
  </body>
</html>
