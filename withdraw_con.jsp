<%@include file="dbcom.jsp" %>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%

String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
int s3=Integer.parseInt(request.getParameter("t3"));
int s4=Integer.parseInt(request.getParameter("t4"));

ResultSet rr1=st1.executeQuery("select * from customerdetails where accountnumber='"+s1+"' ");

rr1.next();
int bal=0;
String contact=rr1.getString(6);

if(s4>s3)
{

  %>
  <script>
  alert("Please enter valid Withdraw Amount");
  document.location="withdraw.jsp";
  </script>
  <%
}

else
{

  bal=s3-s4;

int k=stmt.executeUpdate("update deposit set deposit='"+bal+"' where account_no='"+s1+"'");

ResultSet rr=st.executeQuery("select * from withdraw where account_no='"+s1+"' ");

if(!rr.next())
{
int m=stmt.executeUpdate("insert into withdraw values('"+s1+"','"+s2+"','"+bal+"','"+s4+"',curdate())");

}

//else
//{
//int k=stmt.executeUpdate("update withdraw set Current_Bal='"+bal+"' where account_no='"+s1+"'");

//}

}

String msg="Withdraw of Rs."+s4+"successfully and current balance"+bal;

String url="http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=aishwaryakodli.19@gmail.com:iloveyousagu&senderID=TEST SMS&receipientno="+contact+"&dcs=0&msgtxt="+msg+"&state=4";

response.sendRedirect(url);


%>

<script>
//alert("deposited successfully");
//document.location="deposit.jsp";
</script>

