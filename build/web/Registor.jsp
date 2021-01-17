<%-- 
    Document   : Registor
    Created on : Jul 6, 2019, 4:20:05 AM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
  
    if(request.getParameter("profilefor")==null && request.getParameter("name")==null && request.getParameter("radio")==null && request.getParameter("Text")==null && request.getParameter("relegion")==null && request.getParameter("mobileno")==null && request.getParameter("Email")==null && request.getParameter("Password")==null){
       // response.sendRedirect("index.jsp");
         out.println("start");
    }
    else{
        try{
            LinkedList l=new LinkedList();
           for(char c='A';c<='Z';c++){
               l.add(""+c);
           }
           for(char c='a';c<='z';c++){
               l.add(""+c);
            }
           for(int i=0;i<=9;i++){
                  l.add(""+i);
           }
           Collections.shuffle(l);
           String code="";
           for(int i=0;i<6;i++){
               code=code+l.get(i);
           }
        String profilefor=request.getParameter("profilefor");
        String name=request.getParameter("Name");
        String gender=request.getParameter("radio");
        String dob=request.getParameter("Text");
        String religion=request.getParameter("religion");
        String mb=request.getParameter("mobileno");
        String email=request.getParameter("Email");
        String pass=request.getParameter("Password");
        String id=null;
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
         Statement st=cn.createStatement();
         st.execute("insert into registor values('"+profilefor+"','"+name+"','','','"+gender+"','"+dob+"','"+religion+"','"+mb+"','"+email+"','"+pass+"','','',0,0,'','','','','','','','','','','','','','"+code+"')");
        cn.close();
        response.sendRedirect("index.jsp");
         }
        catch(Exception e){
            out.println(e.getMessage());
         }
    }
    %>