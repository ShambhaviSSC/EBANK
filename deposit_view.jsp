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
.style12 {
	font-size: 24px;
	font-weight: bold;
}
.style15 {color: #000000; font-weight: bold; }
.style16 {
	color: #993300;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
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
          <h2 style="margin-left:300px;">Deposit Details 	</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p>
			
			</p>
            <p>&nbsp;</p>
			<p>
			  <%@include file="dbcom.jsp"%>
		      <%
			String uname=(String)session.getAttribute("uname");
			
			ResultSet res=stmt.executeQuery("select * from customerdetails where firstname='"+uname+"' ");
			res.next();
			String ac_no=res.getString("accountnumber");
			
			ResultSet rr=st.executeQuery("select * from deposit where account_no='"+ac_no+"' ");
			
		
			%>
		    </p>
			<p><strong style="color:#990000;">Account Holder: <span style="color:#FF0000"><%=uname%></span> </strong></p>
			
			<hr />
				
               <table width="414" height="215" align="center">
			  <%
				while(rr.next())
				{
				%>
                <tr>
                  <td width="163"><span class="style15">Account No </span></td>
                  <td width="161"><span class="style16"><%=rr.getString(1)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Account Type </span></td>
                  <td><span class="style16"><%=rr.getString(2)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Deposit Amount </span></td>
                  <td><span class="style16"><%=rr.getString(3)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Deposit Type </span></td>
                  <td><span class="style16"><%=rr.getString(4)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Deposit Duration </span></td>
                  <td><span class="style16"><%=rr.getString(5)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Rate Of Interest </span></td>
                  <td><span class="style16"><%=rr.getString(6)%></span></td>
                </tr>
                <tr>
                  <td><span class="style15">Deposit Date </span></td>
                  <td><span class="style16"><%=rr.getString(7)%></span></td>
                </tr>
				<%
				}
				%>
            </table>
			  <hr />	
			  <p>&nbsp;</p>
			  <p align="center">&nbsp;</p>
			  <p align="center"><a href="deposite_view_d.jsp" target="_blank" class="style12">Download </a> </p>
			  
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Online Banking </a>.</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
