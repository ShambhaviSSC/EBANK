<%@include file="dbcom.jsp" %>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%

String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("t5");
String s6=request.getParameter("t6");

ResultSet rs=st.executeQuery("select * from customerdetails where accountnumber='"+s1+"'");
rs.next();



int k=stmt.executeUpdate("insert into deposit values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',curdate())");

String contact=rs.getString(6);
String msg="Deposite of Rs."+s3+"successfully";

String url="http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=aishwaryakodli.19@gmail.com:iloveyousagu&senderID=TEST SMS&receipientno="+contact+"&dcs=0&msgtxt="+msg+"&state=4";

response.sendRedirect(url);


%>

<script>
//alert("deposited successfully");
//document.location="deposit.jsp";
</script>

