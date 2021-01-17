<%-- 
    Document   : login3
    Created on : Jul 24, 2019, 9:45:06 AM
    Author     : user
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<% 
     String email=null;
     Cookie c[]=request.getCookies();
     for(int i=0;i<c.length;i++){
       if(c[i].getName().equals("user")){
           email=c[i].getValue();
           break;
       }
     }
     if(email==null){
         if(request.getParameter("email")==null){
             response.sendRedirect("index.jsp?err=1");
             
         }
         else{
             email=request.getParameter("email");
             
         }
     }
     if(request.getParameter("password")==null){
         response.sendRedirect("index.jsp?err=1");
     }
     else{
         String pass=request.getParameter("password");
         try{
              String code=request.getParameter("idc");
              Class.forName("com.mysql.jdbc.Driver");
              Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
              Statement st=cn.createStatement();
              ResultSet rs=st.executeQuery("select * from registor where email='"+email+"'");
              if(rs.next()){
                  if(pass.equals(rs.getString(10))){
                      Cookie ct=new Cookie("user",email);
                      ct.setMaxAge(3600);
                      response.addCookie(ct);
                      session.setAttribute(email,pass);
                      session.setMaxInactiveInterval(1000);
                      response.sendRedirect("interest.jsp?id="+code+" ");
                  }
                  else{
                      response.sendRedirect("index.jsp?pass_invalid=1");
                      
                  }
              }
              else{
                  response.sendRedirect("index.jsp?email_err=1");
                  
              }
              cn.close();
              
         }
         catch(Exception er){
             out.println(er.getMessage());
             
         }
     }
 %>