<%@ page import="data.User" %><%--
  Created by IntelliJ IDEA.
  User: chbu
  Date: 06-11-2019
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //Check users Session-cookie
    User user = (User) session.getAttribute("user");
    if (user == null || user.getUsername()==null){
        response.sendRedirect("index.jsp");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
DEN HEMMELIGE SIDE!
Velkommen! <%= user.getUsername() %>
<form method="post" action="logout.jsp">
<button type="submit" name="logout" value="logout">Logout</button>
</form>
</body>
</html>
