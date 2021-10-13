<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<%@page import="passport.dbconnect" %>
<jsp:useBean id="p" class="passport.dbconnect" />
<jsp:getProperty name="p" property="conn" />

<%

     String suser=session.getAttribute("uname").toString();

    String uans=request.getParameter("T2");

    ResultSet rs=p.stmt.executeQuery("select * from Log_in where Username='"+suser+"' ");

   rs.next();
  
   String s1,s2,s5;

  s1=rs.getString(1);
  s2=rs.getString(2);
  s5=rs.getString(5);

  if(uans.equals(s5))
  {
  %>
<body bgcolor="#F2F2F2">
  <p><b><font size="5">&nbsp;</font></b></p>
  <p>
  <img border="0" src="file:///D:/Desktop%20Back%202552010/GIF/LOOK.GIF" width="200" height="54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <b><font size="7" color="#FF00FF" face="Calligraphic">
  <a href="login.html" style="text-decoration: none">
  <span style="background-color: #C0C0C0"><font color="#000000">LOGIN </font>
  </span><font color="#FFFF00"><span style="background-color: #000000">HERE</span></font></a></font></b></p>
  <p>&nbsp;</p>
  <p><font size="5" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </b></font><b><font size="7"><font color="#0000FF">User Name :</font><font color="#800000"><marquee behavior=slide scrollamount=115 scrolldelay=8 width="538"><%out.println(s1);%></marquee></font></font></b></p>
  <font size="7">
  <p><b><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000FF" size="7">Password&nbsp;&nbsp;&nbsp; :</font><font color="#800000"><marquee behavior=slide scrollamount=115 scrolldelay=8 width="538"><%out.println(s2);%></marquee></font></b></p>

<%
  }

  else
  {
    out.println("<p>&nbsp<p>&nbsp<p>&nbsp<p>&nbsp<p>&nbsp<p><font size=8 color=#800000><b><marquee behavior=slide scrollamount=115 scrolldelay=8>Please Check Your Hint Answer</marquee></b></font></p></p></p></p></p></p>");
  }
%><p>&nbsp;</p>