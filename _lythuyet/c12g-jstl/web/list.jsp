<%@ page import="bean.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Pato
  Date: 09/04/2021
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List student</title>
</head>
<body>

    <h2>List student</h2>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Id</th>
            <th>Name</th>
            <th>Date of birth</th>
            <th>Gender</th>
            <th>Degree</th>
        </tr>
        <%

            List<Student> studentListJSP = (List<Student>) request.getAttribute("studentListServlet");
            for (Student student : studentListJSP) {
        %>
        <tr>
            <td></td>
            <td><%=student.getId()%></td>
            <td><%=student.getName()%></td>
            <td><%=student.getDateOfBirth()%></td>
            <td>
                <%if (student.getGender() == 1) {%>
                Male
                <%} else {%>
                Female
                <%}%>
            </td>
            <td><%=student.getGrade()%></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
