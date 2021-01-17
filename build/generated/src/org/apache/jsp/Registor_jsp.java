package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class Registor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

    if(request.getParameter("profilefor")==null && request.getParameter("name")==null && request.getParameter("radio")==null && request.getParameter("Text")==null && request.getParameter("relegion")==null && request.getParameter("mobileno")==null && request.getParameter("Email")==null && request.getParameter("Password")==null){
       // response.sendRedirect("index.jsp");
         out.println("start");
    }
    else{
        class Demo{
       public void main(String []arr){
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
          
       }
   } 
        try{
           
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
         st.execute("insert into registor values('"+profilefor+"','"+name+"','','','"+gender+"','"+dob+"','"+religion+"','"+mb+"','"+email+"','"+pass+"','','',0,0,'','','','','','','','','','','','','')");
        cn.close();
        response.sendRedirect("index.jsp");
         }
        catch(Exception e){
            out.println(e.getMessage());
         }
    }
    
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
