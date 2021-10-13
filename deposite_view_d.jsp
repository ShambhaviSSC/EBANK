<html>

<head>
<script>

window.print();
</script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>

<body>
			<%@include file="dbcom.jsp"%>
			<%
			String uname=(String)session.getAttribute("uname");
			
			ResultSet res=stmt.executeQuery("select * from customerdetails where firstname='"+uname+"' ");
			res.next();
			String ac_no=res.getString("accountnumber");
			
			ResultSet rr=st.executeQuery("select * from deposit where account_no='"+ac_no+"' ");
			
			
			
		
			
			%>
			<form method="post" action="deposit_con.jsp">
			  <table width="674" height="62" border="1" align="center">
                <tr>
                  <td height="32" bgcolor="#000099"><span class="style1 style11"><strong>Account No </strong></span></td>
                  <td bgcolor="#000099"><span class="style1 style11"><strong>Account Type </strong></span></td>
                  <td bgcolor="#000099"><span class="style1 style11"><strong>Deposit Amount </strong></span></td>
				  <td bgcolor="#000099"><span class="style1 style11"><strong>Deposit Type </strong></span></td>
				  <td bgcolor="#000099"><span class="style1 style11"><strong>Deposit Duration </strong></span></td>
				   <td bgcolor="#000099"><span class="style1 style11"><strong>Rate of Interest </strong></span></td>
                  <td bgcolor="#000099"><span class="style1 style11"><strong>Deposit Date </strong></span></td>
                </tr>
				<%
				while(rr.next())
				{
				%>
                <tr>
                  <td><%=rr.getString(1)%></td>
                  <td><%=rr.getString(2)%></td>
                  <td><%=rr.getString(3)%></td>
                  <td><%=rr.getString(4)%></td>
				  <td><%=rr.getString(5)%></td>
				  <td><%=rr.getString(6)%></td>
				  <td><%=rr.getString(7)%></td>
                </tr>
				<%
				}
				%>
              </table>
</form>
			  </body>
			  </html>