<%-- 
    Document   : logout
    Created on : Jul 13, 2019, 12:27:38 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie c=new Cookie("user","");
    c.setMaxAge(0);
    response.addCookie(c);
    response.sendRedirect("index.jsp");
    
%>
