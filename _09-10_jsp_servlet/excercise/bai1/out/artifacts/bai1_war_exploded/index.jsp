<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<table border="1" style="border-collapse: collapse">
  <tr>
    <th>Name</th>
    <th>Birth</th>
    <th>Address</th>
    <th>Anh</th>
  </tr>
  <c:forEach var="custumer" items="${custumerListJstl}" varStatus="loop">
    <tr>
      <td>${custumer.name}</td>
      <td>${custumer.birth}</td>
      <td>${custumer.address}</td>
      <td>
        <img src="${custumer.image}" style="width: auto;height: 100px">
      </td>
    </tr>
  </c:forEach>
</table>
  </body>
</html>
