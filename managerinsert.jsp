<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
s4=request.getParameter("T4");
s5=request.getParameter("T5");
s6=request.getParameter("T6");
int k=stmt.executeUpdate("insert into manager values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
out.println("one rec Inserted");
%>