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
          <li class="active"><a href="admin_home.jsp"><span>Home Page</span></a></li>
         <li><a href="customer_view.jsp"><span>Customer Info</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Online<span>Banking</span> <small>Company Slogan Here</small></a></h1>
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
          <h2><span>Login </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p>
			<table width="789" border="1">
              <tr>
                <td bgcolor="#0000CC"><span class="style2">Ac No</span></td>
                <td bgcolor="#0000CC"><span class="style2">FName</span></td>
                <td bgcolor="#0000CC"><span class="style2">MName</span></td>
                <td bgcolor="#0000CC"><span class="style2">Lname</span></td>
                <td bgcolor="#0000CC"><span class="style2">Address</span></td>
                <td bgcolor="#0000CC"><span class="style2">Ph No</span></td>
                <td bgcolor="#0000CC"><span class="style2">Job</span></td>
                <td bgcolor="#0000CC"><span class="style2">Ac Type</span></td>
                <td bgcolor="#0000CC"><span class="style2">Status</span></td>
                <td bgcolor="#0000CC"><span class="style2">Document</span></td>
              </tr>
              <%@include file="dbcom.jsp"%>
              <%
			  ResultSet res=stmt.executeQuery("select * from customerdetails");
			  while(res.next())
			  {
			  %>
              <tr>
                <td><%=res.getString(1)%></td>
                <td><%=res.getString(2)%></td>
                <td><%=res.getString(3)%></td>
                <td><%=res.getString(4)%></td>
                <td><%=res.getString(5)%></td>
                <td><%=res.getString(6)%></td>
                <td><%=res.getString(7)%></td>
                <td><%=res.getString(8)%></td>
                <td><%=res.getString(9)%></td>
                <td><a href="upload/<%=res.getString(10)%>" target="_blank">view doc </a></td>
              </tr>
              <%
			  }
			  %>
            </table>
			</p>
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
