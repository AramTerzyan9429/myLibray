<%@ page import="model.Book" %>
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
    <title>edit book</title>
</head>
<body>
<%
  Book book = (Book) request.getAttribute("book");
  List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
Please input book's date:
<form action="/books/edit" method="post">
  <input type="hidden" name="bookId" value="<%=book.getId()%>">
  <input type="text" name="title" value="<%=book.getTitle()%>"/><br>
  <input type="text" name="description" value="<%=book.getDescription()%>"/><br>
  <input type="number" name="price" value="<%=book.getPrice()%>"><br>
  <select name="authorId">
    <%
      for (Author author : authors) {
        if (author.equals(book.getAuthor())) {
    %>
    <option value="<%=author.getId()%>"><%=author.getName()%><%=author.getSurName()%> <%=author.getEmail()%><%=author.getAge()%>
    </option>
    <%} else {%>
    <option value="<%=author.getId()%>"><%=author.getName()%>
        <%=author.getSurName()%> <%=author.getEmail()%>
        <%=author.getAge()%>
        <%}}%>
  </select>
  <input type="submit" value="Edit">
</form>

</body>
</html>
