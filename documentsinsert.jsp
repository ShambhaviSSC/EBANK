<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
int k=stmt.executeUpdate("insert into documents values('"+s1+"','"+s2+"','"+s3+"')");
out.println("one rec Inserted");
%>
<script>
document.location="documents.html";
</script>