<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 08.09.2022
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Author page</title>
</head>
<body>
<%
    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>age</th>
    </tr>
    <%for (Author author : authors) {%>
    <tr>
        <td><%=author.getId()%>
        </td>
        <td><%=author.getName()%>
        </td>
        <td><%=author.getSurName()%>
        </td>
        <td><%=author.getEmail()%>
        </td>
        <td><%=author.getAge()%>
        </td>
    </tr>
    <% } %>
</table>
<br>
<a href="../index.jsp">Back</a>
</body>
</html>
