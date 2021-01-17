<%-- 
    Document   : update
    Created on : Jul 12, 2019, 8:37:43 AM
    Author     : user
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
try{
            String email=request.getParameter("email");
            String profilefor=request.getParameter("profilefor");
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            String height=request.getParameter("height");
            String gender=request.getParameter("radio");
            String dob=request.getParameter("Text");
            String religion=request.getParameter("religionr");
            String mob=request.getParameter("mobileno");
            String mothero=request.getParameter("mothero");
            String fathero=request.getParameter("fathero");
            int sis=Integer.parseInt(request.getParameter("sis"));
            int bro=Integer.parseInt(request.getParameter("bro"));
            String stay=request.getParameter("stay");
            String highe=request.getParameter("highe");
            String ugd=request.getParameter("ugd");
            String occu=request.getParameter("occup");
            String income=request.getParameter("income");
            String agep=request.getParameter("agep");
            String heightp=request.getParameter("heightp");
            String status=request.getParameter("status");
            String religionp=request.getParameter("religionp");
            String castep=request.getParameter("castep");
            String educationp=request.getParameter("educationp");
            String occupp=request.getParameter("occupp");
            String incomep=request.getParameter("incomep");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st=cn.createStatement();
            st.execute("update registor set profile_for='"+profilefor+"',sname='"+name+"',age='"+age+"',height='"+height+"',gender='"+gender+"',dob='"+dob+"',religion='"+religion+"',mobile='"+mob+"',mother_occupation='"+mothero+"',father_occupation='"+fathero+"',sisters="+sis+",brothers="+bro+",stay='"+stay+"',highest_education='"+highe+"',UG_degree='"+ugd+"',occupation='"+occu+"',annual_income='"+income+"',age_p='"+agep+"',height_p='"+heightp+"',marital_status_p='"+status+"',religion_p='"+religionp+"',caste_p='"+castep+"',education_p='"+educationp+"',occupation_p='"+occupp+"',income_p='"+incomep+"' where email='"+email+"' ");
            cn.close();
           response.sendRedirect("profile.jsp");
        }
        
        catch(Exception e){
                out.println(e.getMessage());
            
        }
 %>