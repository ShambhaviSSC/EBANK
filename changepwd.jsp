<%@include file="dbcon.jsp"%>
<%
String s1,s2,s3;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
String suser=session.getAttribute("uname").toString();

ResultSet rs=stmt.executeQuery("select * from login where username='"+suser+"' ");
if(rs.next())
{
	if(s2.equals(s3))
	{
	int k=stmt.executeUpdate("update login set password='"+s2+"' where username='"+suser+"' ");
	out.println("Password Changed");
	}
	else
	{
	out.println("Check your New password");
	}
}
%>