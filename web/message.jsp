<%-- 
    Document   : message
    Created on : Jul 16, 2019, 3:57:54 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%
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
           String code2="";
           for(int i=0;i<6;i++){
               code2=code2+l.get(i);
           }
    String email=null;
    Date dt=new Date(); 
     Cookie c[]=request.getCookies();
     for(int i=0;i<c.length;i++){
       if(c[i].getName().equals("user")){
           email=c[i].getValue();
           break;
       }
     }
     if(email!=null && session.getAttribute(email)!=null){
         String code=request.getParameter("id");
         String mess=request.getParameter("mess");
         String tos=null;
         String fcode=null;
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st=cn.createStatement();
        Statement sr=cn.createStatement();
        ResultSet rs=st.executeQuery("select * from registor where code='"+code+"'");
        if(rs.next()){
            tos=rs.getString(9);
        }
        ResultSet rt=sr.executeQuery("select * from registor where email='"+email+"'");
         if(rt.next()){
             fcode=rt.getString(28);
         }
        st.execute("insert into inbox values('"+code2+"','"+tos+"','"+email+"','"+code+"','"+fcode+"','"+mess+"','"+dt+"')" );
        cn.close();
        response.sendRedirect("userprofilel.jsp?id="+code+" ");
  }
  
  }
     catch(Exception e){
             out.println(e.getMessage());
             }
%>