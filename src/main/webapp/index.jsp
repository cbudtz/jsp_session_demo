<%@ page import="business.UserController" %>
<%@ page import="data.User" %><%--
  Created by IntelliJ IDEA.
  User: chbu
  Date: 06-11-2019
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //Try to extract parameters from request
    String cpr = request.getParameter("cpr");
    String pass = request.getParameter("pass");
    //Check if user is aldready logged in!
    if (session.getAttribute("user")!=null){
        response.sendRedirect("mainpage.jsp");
    }
    // Check cpr/pass if they are submitted
    if (cpr != null && pass != null){
        // Find the user in the database
        UserController userController = new UserController();
        User user = userController.checkLogin(cpr, pass);
        //Check if user/pass was in db
        if (user!=null){
            //Remember user by storing session-Cookie in browser (have a look with F12->Application->Cookies
            session.setAttribute("user",user);
            //Send user to the real page
            response.sendRedirect("mainpage.jsp");
        } else {
            out.print("Fejl i login!");
        }
    }
%>
<html>
<head>
    <title>Den store login side!</title>
</head>
<body>
<!-- Post data to same page (action="index.jsp" is not necessary)-->
<form action="index.jsp">
    <input type="text" name="cpr">
    <input type="password" name="pass">
    <button type="submit">Send data</button>
</form>

</body>
</html>
