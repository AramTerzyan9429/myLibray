<%@ page import="model.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 08.09.2022
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Books page</title>
</head>
<body>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>title</th>
        <th>description</th>
        <th>price</th>
        <th>author name</th>
        <th>actions</th>
    </tr>
    <%for (Book book : books) {%>
    <tr>
        <td><%=book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <%if (book.getAuthor() != null) {%>
        <td><%=book.getAuthor().getName()%>
            <%} else { %>
            <span style="color: red">There is no author!</span>
            <%}%>
        </td>
        <td>
            <a href="/books/edit?bookId=<%=book.getId()%>">Edit</a>
            <a href="/books/remove?bookId=<%=book.getId()%>">Delete</a>
        </td>
    </tr>
    <% } %>
</table>
<br>
<a href="../index.jsp">Back</a>
</body>
</html>
