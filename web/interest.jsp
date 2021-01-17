<%-- 
    Document   : interest
    Created on : Jul 23, 2019, 8:29:57 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  try{  
       
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
         String tos=null;
         String fcode=null;
         int count =0;
         int status= 0;
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st=cn.createStatement();
        Statement sr=cn.createStatement();
        Statement sd=cn.createStatement();
        ResultSet rs=st.executeQuery("select * from registor where code='"+code+"'");
        if(rs.next()){
            tos=rs.getString(9);
        }
        ResultSet rt=sr.executeQuery("select * from registor where email='"+email+"'");
         if(rt.next()){
             fcode=rt.getString(28);
         }
         ResultSet rd=sd.executeQuery("select * from interest where tos='"+tos+"' and froms='"+email+"' ");
         if(rd.next()){
         count=rd.getInt(6);
         
             if(count<3){
                 
                 st.execute("update interest set status="+0+" where tos='"+tos+"' and froms='"+email+"' ");
             }
             else if(count==3){
                 st.execute("update interest set status="+-1+" where tos='"+tos+"' and froms='"+email+"' ");
                 
             }
         
         }
         else{
           LinkedList l=new LinkedList();
           for(char cl='A';cl<='Z';cl++){
               l.add(""+cl);
           }
           for(char cl='a';cl<='z';cl++){
               l.add(""+cl);
            }
           for(int i=0;i<=9;i++){
                  l.add(""+i);
           }
           Collections.shuffle(l);
           String code2="";
           for(int i=0;i<6;i++){
               code2=code2+l.get(i);
           } 
           
         
        st.execute("insert into interest values('"+code2+"','"+tos+"','"+email+"','"+code+"','"+fcode+"',"+count+","+status+",'"+dt+"')" );
        cn.close();
       
         }
          response.sendRedirect("userprofile.jsp?id="+code+" ");
  }
  
  }
     catch(Exception e){
             out.println(e.getMessage());
             }
%>