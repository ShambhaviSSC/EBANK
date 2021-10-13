<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<%@page import="passport.dbconnect" %>
<jsp:useBean id="p" class="passport.dbconnect" />
<jsp:getProperty name="p" property="conn" />


<%
  String s1=request.getParameter("T1");
   


  ResultSet rs=p.stmt.executeQuery("select * from Log_in where Username='"+s1+"' ");
  if(rs.next())
  {
       session.setAttribute("uname",s1);
   %>

      <jsp:forward page="forgotpass2.jsp"/>
  <%
   

  }
  else
  {
   
    out.println("<p><font size=8 color=#800000><b><marquee behavior=slide scrollamount=115 scrolldelay=8>Sorry.... Login Name Not Found </marquee></b></font></p>");
   }
%><body bgcolor="#F2F2F2">