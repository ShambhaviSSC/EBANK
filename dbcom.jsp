<%@page import="java.sql.*" %>
<%!
    Connection con;
    Statement stmt;
	Statement st;
	Statement st1;
	 %>
<%
try
   {
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinebanking","root","");
   stmt=con.createStatement();
   st=con.createStatement();
   st1=con.createStatement();
   }
  catch(Exception e)
  {
  out.println(e);
  }
%>
