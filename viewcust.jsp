<html>

<head>
<script>
window.print()
</script>

</head>

<body>
			
			<%@include file="dbcom.jsp" %>
			<form id="form1" name="form1" method="post" action="customerdetailsinsert.jsp">
			<table width="200" border="1" align="center">
    <tr>
      <td bgcolor="#0000FF"><span class="style4">accountnumber</span></td>
      <td bgcolor="#0000FF"><span class="style4">firstname</span></td>
      <td bgcolor="#0000FF"><span class="style4">middlename</span></td>
      <td bgcolor="#0000FF"><span class="style4">lastname</span></td>
      <td bgcolor="#0000FF"><span class="style4">address</span></td>
      <td bgcolor="#0000FF"><span class="style4">phonenumber</span></td>
      <td bgcolor="#0000FF"><span class="style4">job</span></td>
      <td bgcolor="#0000FF"><span class="style4">accounttype</span></td>
      <td bgcolor="#0000FF"><span class="style4">status</span></td>
    </tr>
	<%
	
	ResultSet rs=stmt.executeQuery("select * from customerdetails");
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
    </tr>
	
	<%
	
	}
	
	%>
  </table>
  </form>
  </body>
  </html>
            