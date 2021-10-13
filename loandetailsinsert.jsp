<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
s4=request.getParameter("T4");
s5=request.getParameter("T5");
s6=request.getParameter("T6");
s7=request.getParameter("T7");
s8=request.getParameter("T8");
s9=request.getParameter("T9");
s10=request.getParameter("T10");
int k=stmt.executeUpdate("insert into loandetails values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
out.println("one rec Inserted");
%>
<script>
document.location="mloandetails.html";
</script>