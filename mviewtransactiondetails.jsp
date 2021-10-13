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
.style4 {color: #FFFFFF; font-weight: bold; }
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
          <li class="active"><a href="managerhome.html"><span>Home Page</span></a></li>
         <li><a href="customer_view2.jsp"><span>Customer Info</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
          
        </ul>

      </div>
      
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Online<span>Banking</span></a></h1>
      </div>
      <div class="clr"></div>
    
        <div class="clr"></div>
    </div>
      <div class="clr"></div>
  </div>
</div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article" style="margin-left:-300px;">
          <h2 style="margin-left:300px;"><span>Transaction<span> </span> Details</span></h2>
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

			<table id="t01" align="center">
    <tr>
      <td bgcolor="#0000FF"><span class="style4">accoutnumber</span></td>
      <td bgcolor="#0000FF"><span class="style4">transactiontype</span></td>
      <td bgcolor="#0000FF"><span class="style4">deposit</span></td>
      <td bgcolor="#0000FF"><span class="style4">withdraw</span></td>
      <td bgcolor="#0000FF"><span class="style4">date</span></td>
    </tr>
	<%
	
	ResultSet rs=stmt.executeQuery("select * from transactiondetails");
	while(rs.next())
	{
	
	%>
    <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
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
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Online Banking </a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
