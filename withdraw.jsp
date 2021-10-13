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
.style6 {color: #000000}
.style8 {color: #000000; font-weight: bold; }
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
      
      </div>
      <div class="menu_nav">
         <ul>
          <li class="active"><a href="customer_home.jsp"><span>Home Page</span></a></li>
         <li><a href="customer_view2.jsp"><span>Customer Info</span></a></li>
		  <li><a href="deposit.jsp"><span>Deposit</span></a></li>
		   <li><a href="deposit_view.jsp"><span>Deposit Details</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
          
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
      <div class="mainbar" style="width:900px;">
        <div class="article">
          <h2 style="margin-left:300px;">WithDraw</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p>
			
			</p>
            <p>&nbsp;</p>
			<%@include file="dbcom.jsp"%>
			<%
			String uname=(String)session.getAttribute("uname");
			
			ResultSet res=stmt.executeQuery("select * from customerdetails where firstname='"+uname+"' ");
				res.next();
			//String ac_no="";
			//String ac_type="";
				//int bal=0;
			String ac_no=res.getString(1);
			String ac_type=res.getString(8);
			
			ResultSet rs=st.executeQuery("select * from deposit where account_no='"+ac_no+"' and deposit_type='Normal' ");
rs.next();

int bal=rs.getInt(3);
			
			%>
			<form method="post" action="withdraw_con.jsp">
            <table width="405" height="236" align="center">
              <tr>
                <td>Account No </td>
                <td><label>
                  <input name="t1" type="text" id="t1" value="<%=ac_no%>" style="width:200px;" />
                </label></td>
              </tr>
              <tr>
                <td>Account Type </td>
                <td><input name="t2" type="text" id="t2" value="<%=ac_type%>" style="width:200px;" /></td>
              </tr>
              <tr>
                <td>Current Balance </td>
                <td><input name="t3" type="text" id="t3" style="width:200px;" value="<%=bal%>" /></td>
              </tr>
              <tr>
                <td>Withdraw  Amount </td>
                <td><input name="t4" type="text" id="t4" style="width:200px;" /></td>
              </tr>
              <tr>
                <td height="29">&nbsp;</td>
                <td><label>
                <input type="submit" name="Submit" value="Submit" style="background-color:#000099;color:#FFFFFF;width:100px;" />
                <input type="reset" name="Submit2" value="Reset" style="background-color: #009933;color:#FFFFFF;width:100px;" />
				
                </label></td>
              </tr>
            </table>
			</form>
            <p>&nbsp;</p>
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
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
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
