<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<%@page import="passport.dbconnect" %>
<jsp:useBean id="p" class="passport.dbconnect" />
<jsp:getProperty name="p" property="conn" />

<%

     String suser=session.getAttribute("uname").toString();
  
  ResultSet rs=p.stmt.executeQuery("select * from Log_in where Username='"+suser+"' ");
  rs.next();

%>


<html>

<head>
<title>forgot password</title>
</head>

<body bgcolor="#F2F2F2">
<form method="POST" action="forgotpass3.jsp">
  <p align="center">&nbsp;</p>
  <p align="center"><b><font size="6" color="#800000">Please Answer the 
  following Question which was Submitted by you through the signup form at the 
  time of Registration</font></b></p>
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="60%" id="AutoNumber1" height="110">
      <tr>
        <td width="100%" colspan="2" height="65" >
  <p align="center"><b><font face="Times New Roman">&nbsp;</font> 
  <font size="7" face="Calligraphic"><span style="background-color: #C0C0C0">Forgot 
  </span><font color="#FFFF00"><span style="background-color: #000000">Password</span></font></font></b></p>
  <p align="center">&nbsp;</p>
        </td>
      </tr>
      <tr>
        <td width="50%" height="30" align="center" >
        <font face="Monotype Corsiva" size="5">&nbsp;Hint Question</font><p>&nbsp;</td>
        <td width="50%" height="30" align="left" valign="baseline" >
 
  &nbsp;<input type="text" name="T1" value="<%=rs.getString(4) %>"  size="20"></p>
        </td>
      </tr>
      <tr>
        <td width="50%" height="37" align="center" >
        <font face="Monotype Corsiva" size="5">Hint Answer</font></td>
        <td width="50%" height="37" valign="middle" align="left" >&nbsp;<input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="100%" height="1" colspan="2" align="left" >
        <p align="center">&nbsp;</p>
        <p align="center"> 
        <input type="submit" value="  Submit  " name="B1">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        <input type="reset" value="  Reset  " name="B2"></td>
      </tr>
    </table>
    </center>
  </div>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
</form>

</body>

</html>