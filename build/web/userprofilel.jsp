<%-- 
    Document   : profile
    Created on : Jul 7, 2019, 5:43:33 PM
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
%>

<!DOCTYPE html>
<!-- html -->
<html>
<!-- head -->
<head>
<title>User Profile</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style --> 
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!--meta data-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Match Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//meta data-->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- /online fonts -->
<!-- nav smooth scroll -->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //nav smooth scroll -->
</head>
<!-- //head -->
<!-- body -->
<body>
<%
     if(email!=null && session.getAttribute(email)!=null){
  
    try{
         String code=request.getParameter("id");
         String tos=null;
         int status= -1;
         int count=0;
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
         Statement st=cn.createStatement();
         Statement sd=cn.createStatement();
         ResultSet rs=st.executeQuery("select * from registor where code='"+code+"'");
        
    
%>
<!-- header -->

<header>
<!--  Navigation Start -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
          <div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0">Browse Profiles by</a>
						<nav class="cd-dropdown"> 
							<a href="#0" class="cd-close">Close</a>
							<ul class="cd-dropdown-content"> 
								<li><a href="matches.html">All Profiles</a></li>
								<li class="has-children">
									<a href="#">Mother Tongue</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="l_list.html">Language 1</a></li>
												<li><a href="l_list.html">Language 2</a> </li>
												<li><a href="l_list.html">Language 3</a></li>
												<li><a href="l_list.html">Language 4</a></li>
												<li><a href="l_list.html">Language 5</a></li> 
												<li><a href="l_list.html">Language 6</a></li> 
												<li><a href="l_list.html">Language 7</a></li> 
												<li><a href="l_list.html">Language 8</a></li> 
												<li><a href="l_list.html">Language 9</a></li> 
												<li><a href="l_list.html">Language 10</a></li> 
												<li><a href="l_list.html">Language 11</a></li> 
												<li><a href="l_list.html">Language 12</a></li> 
												<li><a href="l_list.html">Language 13</a></li> 
												<li><a href="l_list.html">Language 14</a></li> 
												<li><a href="l_list.html">Language 15</a></li> 
												<li><a href="l_list.html">Language 16</a></li> 
												<li><a href="l_list.html">Language 17</a></li> 
												<li><a href="l_list.html">Language 18</a></li> 
												<li><a href="l_list.html">Language 19</a></li> 
												<li><a href="l_list.html">Language 20</a></li> 
											
									</ul> <!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">Caste</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="c_list.html">Caste 1</a></li>
												<li><a href="c_list.html">Caste 2</a></li>  
												<li><a href="c_list.html">Caste 3</a></li> 
												<li><a href="c_list.html">Caste 4</a></li> 
												<li><a href="c_list.html">Caste 5</a></li> 
												<li><a href="c_list.html">Caste 6</a></li> 
												<li><a href="c_list.html">Caste 7</a></li> 
												<li><a href="c_list.html">Caste 8</a></li> 
												<li><a href="c_list.html">Caste 9</a></li> 
												<li><a href="c_list.html">Caste 10</a></li> 
												<li><a href="c_list.html">Caste 11</a></li> 
												<li><a href="c_list.html">Caste 12</a></li> 
												<li><a href="c_list.html">Caste 13</a></li> 
												<li><a href="c_list.html">Caste 14</a></li> 
												<li><a href="c_list.html">Caste 15</a></li> 
												<li><a href="c_list.html">Caste 16</a></li> 
												<li><a href="c_list.html">Caste 17</a></li> 
												<li><a href="c_list.html">Caste 18</a></li> 
												<li><a href="c_list.html">Caste 19</a></li> 
												<li><a href="c_list.html">Caste 20</a></li> 
												<li><a href="c_list.html">Caste 21</a></li> 
												<li><a href="c_list.html">Caste 22</a></li> 
												<li><a href="c_list.html">Caste 23</a></li> 
												<li><a href="c_list.html">Caste 24</a></li> 
												<li><a href="c_list.html">Caste 25</a></li> 
												<li><a href="c_list.html">Caste 26</a></li> 
									</ul> <!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="products2.html">Religion</a> 
									<ul class="cd-secondary-dropdown is-hidden"> 
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="r_list.html">Religion 1</a></li> 
												<li><a href="r_list.html">Religion 2</a></li> 
												<li><a href="r_list.html">Religion 3</a></li> 
												<li><a href="r_list.html">Religion 4</a></li> 
												<li><a href="r_list.html">Religion 5</a></li> 
												<li><a href="r_list.html">Religion 6</a></li> 
												<li><a href="r_list.html">Religion 7</a></li> 
												<li><a href="r_list.html">Religion 8</a></li> 
												<li><a href="r_list.html">Religion 9</a></li> 
												<li><a href="r_list.html">Religion 10</a></li> 
												<li><a href="r_list.html">Religion 11</a></li> 
												<li><a href="r_list.html">Religion 12</a></li> 
												<li><a href="r_list.html">Religion 13</a></li> 
												<li><a href="r_list.html">Religion 14</a></li> 
												<li><a href="r_list.html">Religion 15</a></li> 
												<li><a href="r_list.html">Religion 16</a></li> 
												<li><a href="r_list.html">Religion 17</a></li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children --> 
								<li class="has-children">
									<a href="#">City</a> 
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="city_list.html">City 1</a></li> 
												<li><a href="city_list.html">City 2</a></li> 
												<li><a href="city_list.html">City 3</a></li> 
												<li><a href="city_list.html">City 4</a></li> 
												<li><a href="city_list.html">City 5</a></li> 
												<li><a href="city_list.html">City 6</a></li> 
												<li><a href="city_list.html">City 7</a></li> 
												<li><a href="city_list.html">City 8</a></li> 
												<li><a href="city_list.html">City 9</a></li> 
												<li><a href="city_list.html">City 10</a></li> 
												<li><a href="city_list.html">City 11</a></li> 
												<li><a href="city_list.html">City 12</a></li> 
												<li><a href="city_list.html">City 13</a></li> 
												<li><a href="city_list.html">City 14</a></li> 
												<li><a href="city_list.html">City 15</a></li> 
												<li><a href="city_list.html">City 16</a></li> 
												<li><a href="city_list.html">City 17</a></li> 
												<li><a href="city_list.html">City 18</a></li> 
												<li><a href="city_list.html">City 19</a></li> 
												<li><a href="city_list.html">City 20</a></li> 
												<li><a href="city_list.html">City 21</a></li> 
												<li><a href="city_list.html">City 22</a></li> 
												<li><a href="city_list.html">City 23</a></li> 
												<li><a href="city_list.html">City 24</a></li> 
												<li><a href="city_list.html">City 25</a></li> 
												<li><a href="city_list.html">City 26</a></li> 
												<li><a href="city_list.html">City 27</a></li> 
												<li><a href="city_list.html">City 28</a></li> 
												<li><a href="city_list.html">City 29</a></li> 
												<li><a href="city_list.html">City 30</a></li> 
												<li><a href="city_list.html">City 31</a></li> 
												<li><a href="city_list.html">City 32</a></li> 
												<li><a href="city_list.html">City 33</a></li> 
												<li><a href="city_list.html">City 34</a></li> 
												<li><a href="city_list.html">City 35</a></li> 
												<li><a href="city_list.html">City 36</a></li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">Occupation</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="o_list.html">IT Software </a></li> 
												<li><a href="o_list.html">Teacher  </a></li>
												<li><a href="o_list.html">Business man </a></li>
												<li><a href="o_list.html">Lawyers</a></li>
												<li><a href="o_list.html">Defence </a></li>
												<li><a href="o_list.html">IAS </a></li>
												<li><a href="o_list.html">Govt.Services </a></li>
												<li><a href="o_list.html">Doctors </a></li>
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">State</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="s_list.html">State 1</a></li> 
												<li><a href="s_list.html">State 2</a></li> 
												<li><a href="s_list.html">State 3</a></li> 
												<li><a href="s_list.html">State 4</a></li> 
												<li><a href="s_list.html">State 5</a></li> 
												<li><a href="s_list.html">State 6</a></li> 
												<li><a href="s_list.html">State 7</a></li> 
												<li><a href="s_list.html">State 8</a></li> 
												<li><a href="s_list.html">State 9</a></li> 
												<li><a href="s_list.html">State 10</a></li> 
												<li><a href="s_list.html">State 11</a></li> 
												<li><a href="s_list.html">State 12</a></li> 
												<li><a href="s_list.html">State 13</a></li> 
												<li><a href="s_list.html">State 14</a></li> 
												<li><a href="s_list.html">State 15</a></li> 
												<li><a href="s_list.html">State 16</a></li> 
												<li><a href="s_list.html">State 17</a></li> 
												<li><a href="s_list.html">State 18</a></li> 
												<li><a href="s_list.html">State 19</a></li> 
												<li><a href="s_list.html">State 20</a></li> 
												<li><a href="s_list.html">State 21</a></li> 
												<li><a href="s_list.html">State 22</a></li> 
												<li><a href="s_list.html">State 23</a></li> 
												<li><a href="s_list.html">State 24</a></li> 
												<li><a href="s_list.html">State 25</a></li> 
												<li><a href="s_list.html">State 26</a></li> 
												<li><a href="s_list.html">State 27</a></li> 
												<li><a href="s_list.html">State 28</a></li> 
												<li><a href="s_list.html">State 29</a></li> 
												<li><a href="s_list.html">State 30</a></li> 
												<li><a href="s_list.html">State 31</a></li> 
												<li><a href="s_list.html">State 32</a></li> 
												<li><a href="s_list.html">State 33</a></li> 
												<li><a href="s_list.html">State 34</a></li> 
												<li><a href="s_list.html">State 35</a></li> 
												<li><a href="s_list.html">State 36</a></li> 
												<li><a href="s_list.html">State 37</a></li> 
												<li><a href="s_list.html">State 38</a></li> 
												<li><a href="s_list.html">State 39</a></li> 
												<li><a href="s_list.html">State 40</a></li> 
												<li><a href="s_list.html">State 41</a></li> 
												<li><a href="s_list.html">State 42</a></li> 
												<li><a href="s_list.html">State 43</a></li> 
												<li><a href="s_list.html">State 44</a></li> 
												<li><a href="s_list.html">State 45</a></li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li> <!-- .has-children -->  
								<li class="has-children">
									<a href="#">NRI</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
												<li><a href="nri_list.html">Country 1</a></li> 
												<li><a href="nri_list.html">Country 2</a></li> 
												<li><a href="nri_list.html">Country 3</a></li> 
												<li><a href="nri_list.html">Country 4</a></li> 
												<li><a href="nri_list.html">Country 5</a></li> 
												<li><a href="nri_list.html">Country 6</a></li> 
												<li><a href="nri_list.html">Country 7</a></li> 
												<li><a href="nri_list.html">Country 8</a></li> 
												<li><a href="nri_list.html">Country 9</a></li> 
												<li><a href="nri_list.html">Country 10</a></li> 
												<li><a href="nri_list.html">Country 11</a></li> 
												<li><a href="nri_list.html">Country 12</a></li> 
									</ul><!-- .cd-secondary-dropdown --> 
								</li>  
							</ul> <!-- .cd-dropdown-content -->
						</nav> <!-- .cd-dropdown -->
					</div> <!-- .cd-dropdown-wrapper -->	 
				</div>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="index.jsp">Home</a></li>
		            <li><a href="about.html">About</a></li>
		            <li><a href="search.html">Search</a></li>
		            <li><a href="app.html" target="_blank">Mobile</a></li>
					  <!--<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="search.html">Regular Search</a></li>
		                <li><a href="profile.html">Recently Viewed Profiles</a></li>
		                <li><a href="search-id.html">Search By Profile ID</a></li>
		                <li><a href="faq.html">Faq</a></li>
		                <li><a href="shortcodes.html">Shortcodes</a></li>
		              </ul>
		            </li>-->
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Quick Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <div class="banner-bottom-login">
		<div class="w3agile_banner_btom_login">
			<form action="searchl.jsp" method="post">
				<div class="w3agile__text w3agile_banner_btom_login_left">
					<h4>I'm looking for a</h4>
                                        <select id="country" onchange="change_country(this.value)" class="frm-field required" name="genders">
						<option value="Female">Bride</option>
						<option value="Male">Groom</option>   
					</select>
				</div>
				
				<div class="w3agile__text w3agile_banner_btom_login_left2">
					<h4>Religion</h4>
                                        <select id="country3" onchange="change_country(this.value)" class="frm-field required" name="religions">
						<option value="Hindu">Hindu</option>  
						<option value="Muslim">Muslim</option>   
						<option value="Christian">Christian</option>   
						<option value="Sikh">Sikh</option>   
						<option value="Jain">Jain</option>   
						<option value="Buddhist">Buddhist</option>
						<option value="No Religious Belief">No Religious Belief</option>   					
					</select>
				</div>
				<div class="w3agile_banner_btom_login_left3">
					<input type="submit" value="Search" />
				</div>
				<div class="clearfix"> </div>
			</form>
		</div>
	</div>
		              </ul>
		            </li>
		            <li class="last"><a href="contact.html">Contacts</a></li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!--  Navigation End -->
</header>
<!-- /header -->

	<!-- inner banner -->	
	<div class="w3layouts-inner-banner">
		<div class="container">
			<div class="logo">
				<h1><a class="cd-logo link link--takiri" href="index.html">Match <span><i class="fa fa-heart" aria-hidden="true"></i>Made in heaven.</span></a></h1>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //inner banner -->	
	
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html">Home</a> > <a href="matches.html">Matches</a> > <span>Profile Details</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->


	<!-- Bride Profile Details -->
	<div class="w3ls-list">
		<div class="container">
		<h2>Profile Details</h2>
		<div class="col-md-9 profiles-list-agileits">
			<div class="single_w3_profile">
				<div class="agileits_profile_image">
					<img src="akash.jpg" alt="profile image" />
				</div>
                            <%
if(rs.next()){
    tos=rs.getString(9);
    ResultSet rd=sd.executeQuery("select * from interest where tos='"+tos+"' and froms='"+email+"' ");
    if(rd.next()){
       status=rd.getInt(7);
       count=rd.getInt(6);
       
    }
%>
				<div class="w3layouts_details">
                                    <h4>Profile ID:  <%=code%></h4>
                                    <div class="form_but1">
						<label class="col-sm-3 control-label1">PROFILE FOR : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(1)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                    <div class="form_but1">
						<label class="col-sm-3 control-label1">NAME : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(2)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                     <div class="form_but1">
						<label class="col-sm-3 control-label1">GENDER : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(5)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                     <div class="form_but1">
						<label class="col-sm-3 control-label1">DATE OF BIRTH : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(6)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                    <div class="form_but1">
						<label class="col-sm-3 control-label1">RELIGION : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(7)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                   <div class="form_but1">
						<label class="col-sm-3 control-label1">MOBILE NO : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(8)%>
						</div>
						<div class="clearfix"> </div>
					</div>
<%
        if(status == 1){
%>
                                                <form method="post" action="message.jsp?id=<%=code%> "  >
                                                     <div class="form_but1">
                                                         <textarea rows="5" cols="50" name="mess"  ></textarea>
                                                         <input type="submit" value="Send Message">
						</div>
                                                </form>
<%
        }
        else if(status == 0){
 %>           
       <p>pending request....</p>      
<%  
        }
        else if(count!=3 && status==-1){
%>

 <a href='interest.jsp?id=<%=code%>' >Send Interest</a>
 <%
        }
        else{
  %>
  <p>Blocked</p>
 <%          
        }
 
 %>                                  
                                    
                                    
					
				<div class="clearfix"></div>
			</div>
                         
				<div class="clearfix"></div>

 
			<div class="profile_w3layouts_details">
				<div class="agileits_aboutme">
					<h4>About me</h4>
					<h5>Brief about me:</h5>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
					<p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
					<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
					<h5>Family Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Mother : </label>
						<div class="col-sm-9 w3_details">
                                                    <%=rs.getString(11)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Father : </label>
						<div class="col-sm-9 w3_details">
                                                     <%=rs.getString(12)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Sister's : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getInt(13)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Brother's : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getInt(14)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Stay : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(15)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					
					<h5>Education Details:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Highest Education : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(16)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">UG Degree : </label>
						<div class="col-sm-9 w3_details">
                                                         <%=rs.getString(17)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(18)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Annual Income : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(19)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<h5>Desired Partner:</h5>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Age : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(20)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Height : </label>
						<div class="col-sm-9 w3_details">
							  <%=rs.getString(21)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Marital Status : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(22)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Religion : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(23)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Caste : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(24)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Education : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(25)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Occupation : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(26)%>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="form_but1">
						<label class="col-sm-3 control-label1">Income : </label>
						<div class="col-sm-9 w3_details">
							 <%=rs.getString(27)%>
						</div>
						<div class="clearfix"> </div>
					</div>
                                               
				</div>
			</div>
		</div>
     <% 
    } 
    cn.close();
    }
    catch(Exception e){
        out.println(e.getMessage());
        
    }
     }
    
 %>                                               
		
	<!-- Modal -->
				<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
				  <div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login to Continue</h4>
					  </div>
					  <div class="modal-body">
						<div class="login-w3ls">
							<form id="signin" action="#" method="post">
								<label>User Name </label>
								<input type="text" name="User Name" placeholder="Username" required="">
								<label>Password</label>
								<input type="password" name="Password" placeholder="Password" required="">	
								<div class="w3ls-loginr"> 
									<input type="checkbox" id="brand" name="checkbox" value="">
									<span> Remember me ?</span> 
									<a href="#">Forgot password ?</a>
								</div>
								<div class="clearfix"> </div>
								<input type="submit" name="submit" value="Login">
								<div class="clearfix"> </div>
								<div class="social-icons">
									<ul>  
										<li><a href="#"><span class="icons"><i class="fa fa-facebook" aria-hidden="true"></i></span><span class="text">Facebook</span></a></li> 
										<li class="twt"><a href="#"><span class="icons"><i class="fa fa-twitter" aria-hidden="true"></i></span><span class="text">Twitter</span></a></li>  
									</ul> 
									<div class="clearfix"> </div>
								</div>	
							</form>
						</div>
					  </div>
					</div>

				  </div>
				</div>
				<!-- //Modal -->
	</div>
	<!-- //Bride Profile Details -->
	
	<!-- browse profiles -->
	<div class="w3layouts-browse text-center">
		<div class="container">
			<h3>Browse Matchmaking Profiles by</h3>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Country</h4>
				<ul>
					<li><a href="nri_list.html">Country 1</a></li>
					<li><a href="nri_list.html">Country 2</a></li>
					<li><a href="nri_list.html">Country 3</a></li>
					<li><a href="nri_list.html">Country 4</a></li>
					<li><a href="nri_list.html">Country 5</a></li>
					<li><a href="nri_list.html">Country 6</a></li>
					<li><a href="nri_list.html">Country 7</a></li>
					<li><a href="nri_list.html">Country 8</a></li>
					<li><a href="nri_list.html">Country 9</a></li>
					<li><a href="nri_list.html">Country 10</a></li>
					<li><a href="nri_list.html">Country 11</a></li>
					<li class="more"><a href="nri_list.html">more..</a></li>
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Religion</h4>
				<ul>
					<li><a href="r_list.html">Religion 1</a></li>
					<li><a href="r_list.html">Religion 2</a></li>
					<li><a href="r_list.html">Religion 3</a></li>
					<li><a href="r_list.html">Religion 4</a></li>
					<li><a href="r_list.html">Religion 5</a></li>
					<li><a href="r_list.html">Religion 6</a></li>
					<li><a href="r_list.html">Religion 7</a></li>
					<li><a href="r_list.html">Religion 8</a></li>
					<li><a href="r_list.html">Religion 9</a></li>
					<li><a href="r_list.html">Religion 10</a></li>
					<li><a href="r_list.html">Religion 11</a></li>
					<li class="more"><a href="r_list.html">more..</a></li>
				</ul>
			</div>
			<div class="col-md-4 w3-browse-grid">
				<h4>By Community</h4>
				<ul>
					<li><a href="r_list.html">Community 1</a></li>
					<li><a href="r_list.html">Community 2</a></li>
					<li><a href="r_list.html">Community 3</a></li>
					<li><a href="r_list.html">Community 4</a></li>
					<li><a href="r_list.html">Community 5</a></li>
					<li><a href="r_list.html">Community 6</a></li>
					<li><a href="r_list.html">Community 7</a></li>
					<li><a href="r_list.html">Community 8</a></li>
					<li><a href="r_list.html">Community 9</a></li>
					<li class="more"><a href="r_list.html">more..</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //browse profiles -->

	<!-- Get started -->
	<div class="w3layous-story text-center">
		<div class="container">
			<h4>Your story is waiting to happen!  <a href="index.html">Get started</a></h4>
		</div>
	</div>
	<!-- //Get started -->
	
	
<!-- footer -->
<footer>
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h6>Get in Touch.</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 123 San Sebastian, New York City USA.</li>
						<li><i class="fa fa-mobile"></i> 333 222 3333 </li>
						<li><i class="fa fa-phone"></i> +222 11 4444 </li>
						<li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul> 
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3>Company</h3>
						<ul>
							<li><a href="about.html">About Us</a></li>
							<li><a href="feedback.html">Feedback</a></li>  
							<li><a href="help.html">Help</a></li>  
							<li><a href="tips.html">Safety Tips</a></li>
							<li><a href="typo.html">Typography</a></li>
							<li><a href="icons.html">Icons Page</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Quick links</h3>
						<ul>
							<li><a href="terms.html">Terms of use</a></li>
							<li><a href="privacy_policy.html">Privacy Policy</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="sitemap.html">Sitemap</a></li>
						</ul> 
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Follow Us on</h3>
						<section class="social">
                        <ul>
							<li><a class="icon fb" href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="#"><i class="fa fa-twitter"></i></a></li>	
							<li><a class="icon gp" href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
						</section>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	<div class="copy-right"> 
		<div class="container">
			<p>Â© 2017 Match. All rights reserved | Design by <a href="http://w3layouts.com"> W3layouts.</a></p>
		</div>
	</div> 
</footer>
<!-- //footer -->	
<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
							
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- for smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	</script>
	<!-- //for smooth scrolling -->
</body>
<!-- //body -->
</html>
<!-- //html -->
