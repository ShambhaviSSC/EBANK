<%@include file="dbcom.jsp" %>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16;
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
s11=request.getParameter("T11");
s12=request.getParameter("T12");
s13=request.getParameter("T13");
s14=request.getParameter("T14");
s15=request.getParameter("T15");
s16=request.getParameter("T16");
int k=stmt.executeUpdate("insert into hireloan values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s16+"')");
out.println("one rec Inserted");
%>