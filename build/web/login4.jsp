<%-- 
    Document   : login4
    Created on : Jul 30, 2019, 7:35:28 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String code=request.getParameter("idc");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class='container'>
        <form id="signin" action="login2.jsp?idc=<%=code%>" method="post">
                                                                 <label>User Name </label>
                                                                
                                                                 <input type="text" name="email" placeholder="Username" required="">
                                                                
                                                                 <label>Password</label>
                                                                 <input type="password" name="password" placeholder="Password" required="">	
                                                                 <div class="w3ls-loginr"> 
                                                                         <input type="checkbox" id="brand" name="checkbox" value="">
                                                                         <span> Remember me ?</span> 
                                                                         <a href="#">Forgot password ?</a>
                                                                 </div>
                                                                 <div class="clearfix"> </div>
                                                                 <input type="submit" name="submit" value="Login">
                                                                 <div class="clearfix"> </div>

                                                         </form>
        </div>
    </body>
</html>
