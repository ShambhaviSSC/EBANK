<%@page import="java.sql.*"%>
<%@include file="dbcom.jsp" %>
<%@page import="java.util.Random"%>


<% 

String s1,s2;
s1=request.getParameter("T1");
s2=request.getParameter("T2");

out.println(s2);

try
{

ResultSet rs=stmt.executeQuery("select * from login where username='"+s1+"' ");
if(!rs.next())
{
out.println("<b>user name not found</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");

}

else
{
	  String pwd=rs.getString(2);
	  if(s2.equals(pwd))
	  {
  session.setAttribute("uname",s1);
		
    String type=rs.getString(3);
	out.println(type);
session.setAttribute("type",type);
					
			if(type.equals("customer"))
			{
			%>
			<script>
			alert("You Have Logged in as Customer");
			document.location="customer_home.jsp";
			</script>
			<%
			}

if(type.equals("account"))
			{
			%>
			<script>
			alert("You Have Logged in as Accountant");
			document.location="ac_home.jsp";
			</script>
			<%
			}			
			
			
			if(type.equals("admin"))
			{
			%>
			<script>
			alert("You Have Logged in as Admin");
			document.location="admin_home.jsp";
			</script>
			<%
			}	
			
			if(type.equals("manager"))
			{
			%>
			<script>
			alert("You Have Logged in as Manager");
			document.location="managerhome.html";
			</script>
			<%
			}	
			
			if(type.equals("agent"))
			{
			%>
			<script>
			alert("You Have Logged in as Agent");
			document.location="agenthome.html";
			</script>
			<%
			}	
			
			
			
			
		}

	else
	{
	out.println("<b>invalid password..</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");
	}
}

}

catch(Exception e)
{
	  out.println(e);
}

%>

