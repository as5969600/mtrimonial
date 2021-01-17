<%-- 
    Document   : request2
    Created on : Jul 25, 2019, 10:13:52 AM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{  
       
    String email=null;
    Date d=new Date(); 
    String tos=null;
     Cookie c[]=request.getCookies();
     for(int i=0;i<c.length;i++){
       if(c[i].getName().equals("user")){
           email=c[i].getValue();
           break;
       }
     }
     if(email!=null && session.getAttribute(email)!=null){
         int count=0;
         String code=request.getParameter("id");
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
         Statement st=cn.createStatement();
         Statement sd=cn.createStatement();
         Statement sr=cn.createStatement();
         ResultSet rs=st.executeQuery("select * from registor where code='"+code+"'");
         if(rs.next()){
            tos=rs.getString(9);
         }
          ResultSet rr=sr.executeQuery("select * from interest where tos='"+email+"' and froms='"+tos+"' ");
          if(rr.next()){
              count=rr.getInt(6);
          }
         sd.execute("update interest set noofrequest="+(count+1)+",status="+(-1)+" where tos='"+email+"' and froms='"+tos+"' ");
             
           
    cn.close();
    response.sendRedirect("request.jsp");
  }
}
     catch(Exception e){
             out.println(e.getMessage());
             }
%>