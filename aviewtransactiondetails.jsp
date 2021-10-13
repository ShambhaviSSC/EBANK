+<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style1 {font-size: 24px}
.style2 {color: #FFFFFF}
.style4 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>

<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="ac_home.jsp"><span>Home Page</span></a></li>
          <li><a href="support.html"><span>Support</span></a></li>
          <li><a href="about.html"><span>About Us</span></a></li>
          <li><a href="blog.html"><span>Blog</span></a></li>
          <li><a href="contact.html"><span>Contact Us</span></a></li>
        </ul>
      </div>
    </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Online<span>Banking</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
       
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
  </div>
</div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article" style="margin-left:-300px;">
          <div align="center">
            <p class="style1">&nbsp;</p>
            <p class="style1 style2" style="margin-left:100px;"> Transaction Details </p>
          </div>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      <%@include file="dbcom.jsp" %>
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

			<table id="t01" align="left">
           <tr>
             <td width="132" height="37" bgcolor="#0000FF"><span class="style4">AccoutNumber</span></td>
             <td width="125" bgcolor="#0000FF"><span class="style4">TransactionType</span></td>
             <td width="107" bgcolor="#0000FF"><span class="style4">Deposit</span></td>
             <td width="127" bgcolor="#0000FF"><span class="style4">Withdraw</span></td>
             <td width="87" bgcolor="#0000FF"><span class="style4">Date</span></td>
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
       </form>
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
      <p class="lf">&copy; Copyright Online Banking </p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
