<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
s4=request.getParameter("T4");
s5=request.getParameter("T5");
s6=request.getParameter("T6");
s7=request.getParameter("T7");
int k=stmt.executeUpdate("insert into pigmydeposite values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
out.println("one rec Inserted");
%>
<script>
document.location="pigmydeposite.html";
</script>