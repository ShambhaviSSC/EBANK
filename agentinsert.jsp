<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3,s4;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
s4=request.getParameter("T4");
int k=stmt.executeUpdate("insert into agent values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
out.println("one rec Inserted");
%>