<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Splask</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-600.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="menu_nav">
     <ul>
          <li class="active"><a href="managerhome.html"><span>Home </span></a></li>
          
		  <li><a href="login.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Online<span>Banking</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="912" height="304" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="912" height="304" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="912" height="304" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>loan<span> </span> Details</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p>
			
			<%@include file="dbcom.jsp" %>
			<form id="form1" name="form1" method="post" action="customerdetailsinsert.jsp">
			<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 {
  width: 50%;    
  background-color: #f1f1c1;
}
</style>
</head>
<body>

			<table id="t01" align="right">
    <tr>
	
      <td height="10" bgcolor="#0000FF"><span class="style3">AccNum</span></td>
      <td bgcolor="#0000FF" class="style3">Name</td>
      <td bgcolor="#0000FF" class="style3">LoanType</td>
      <td bgcolor="#0000FF"><span class="style3">LoanAmoun</span></td>
      <td bgcolor="#0000FF"><span class="style3">RateOfIn</span></td>
      <td bgcolor="#0000FF"><span class="style3">NumOfYears</span></td>
      <td bgcolor="#0000FF"><span class="style3">EMI</span></td>
      <td bgcolor="#0000FF"><span class="style3">DateOfStart</span></td>
      <td bgcolor="#0000FF"> <span class="style3">EMIdate</span></td>
      <td bgcolor="#0000FF"><span class="style3">LoanNumber</span></td>
    </tr>
	<%
	
	ResultSet rs=stmt.executeQuery("select * from loandetails");
	while(rs.next())
	{
	
	%>
    <tr>
      <td height="20"><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><%=rs.getString(8)%></td>
      <td><%=rs.getString(9)%></td>
      <td><%=rs.getString(10)%></td>
    </tr>
	
	<%
	
	}
	
	%>
  </table>
  </body>
  <p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
