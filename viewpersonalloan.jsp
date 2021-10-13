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
.style2 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div id="google_translate_element"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="menu_nav">
         
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
          <h2 style="margin-left:300px;"><span>personalloan<span> </span> Details</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p>
			
			<%@include file="dbcom.jsp" %>
			<form id="form1" name="form1" method="post" action="customerdetailsinsert.jsp">
			<table width="951" align="center">
    <tr>
      <td bgcolor="#0000FF"><span class="style2">loantype</span></td>
      <td bgcolor="#0000FF"><span class="style2">needforloan</span></td>
      <td bgcolor="#0000FF"><span class="style2">name</span></td>
      <td bgcolor="#0000FF"><span class="style2">resaddress</span></td>
      <td bgcolor="#0000FF"><span class="style2">officeaddress</span></td>
      <td bgcolor="#0000FF"><span class="style2">phno</span></td>
      <td bgcolor="#0000FF"><span class="style2">accno</span></td>
      <td bgcolor="#0000FF"><span class="style2">employee</span></td>
      <td bgcolor="#0000FF"><span class="style2">loandetails</span></td>
      <td bgcolor="#0000FF"><span class="style2">vitness1</span></td>
      <td bgcolor="#0000FF"><span class="style2">vitness2</span></td>
      <td bgcolor="#0000FF"><span class="style2">date1</span></td>
      <td bgcolor="#0000FF"><span class="style2">status</span></td>
    </tr>
	<%
	
	ResultSet rs=stmt.executeQuery("select * from personalloan");
	while(rs.next())
	{
	
	%>
    <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><%=rs.getString(8)%></td>
      <td><%=rs.getString(9)%></td>
      <td><%=rs.getString(10)%></td>
      <td><%=rs.getString(11)%></td>
      <td><%=rs.getString(12)%></td>
      <td><%=rs.getString(13)%></td>
    </tr>
	
	<%
	
	}
	
	%>
</table>
			<p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
     
       
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
      <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/"> Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
