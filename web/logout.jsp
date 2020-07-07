<%-- 
    Document   : logout
    Created on : Apr 20, 2020, 7:58:59 PM
    Author     : dhima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <h1>your are logouted!!</h1>
        <% 
         session.invalidate();  
        %>
        <!--<h3>BACK TO HOME!! click <a href="home.jsp">here</a></h3>-->
        <% response.sendRedirect("home.jsp");%>
        
    </body>
</html>
