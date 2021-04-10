<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/product" method="post">
    <label for="mota"></label>
    <input type="text"  name="info1" id="mota">
    <label for="gia">Gia</label>
    <select name="price" id="gia">
      <option value="2000">
        2000
      </option>
      <option value="3000">3000</option>
      <option value="4000">4000</option>
      <option value="5000">5000</option>
    </select>
    <label for="chietkhau">Chiet khau</label>
    <input type="text" id="chietkhau"  name="info2">
    <input type="submit">
  </form>
  </body>
</html>
