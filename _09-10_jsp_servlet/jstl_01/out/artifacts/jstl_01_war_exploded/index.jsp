<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<table border="1" style="border-collapse: collapse">
 <tr>
   <th>ID</th>
   <th>Ten</th>
   <th>Lop</th>
   <th>Diem</th>
   <th>Xep Loai</th>
   <th>Gioi Tinh</th>
 </tr>
  <c:forEach var="Student" items="${listStudentJstl}" varStatus="loop">
    <tr>
      <td>${Student.id}</td>
      <td>${Student.name}</td>
      <td>${Student.lop}</td>
      <td>${Student.diem}</td>
      <td>
        <c:choose>
          <c:when test="${Student.gender==1}">
            Male
          </c:when>
          <c:when test="${Student.gender==0}">
            Female
          </c:when>
        </c:choose>
      </td>
      <td>
        <c:choose>
          <c:when test="${Student.diem<5}">Bad</c:when>
          <c:when test="${Student.diem>=5&&Student.diem<7}">Trung Binh</c:when>
          <c:when test="${Student.diem>=5&&Student.diem<7}">Trung Binh</c:when>
          <c:when test="${Student.diem>=7&&Student.diem<8}">Kha</c:when>
          <c:when test="${Student.diem>=8}">Gioi</c:when>
        </c:choose>
      </td>
<%--      <td>${Student.id}</td>--%>
    </tr>
  </c:forEach>
</table>
  </body>
</html>
