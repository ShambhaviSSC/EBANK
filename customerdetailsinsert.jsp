<%@include file="dbcom.jsp" %>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%
String s1=(String)session.getAttribute("s1");
String s2=(String)session.getAttribute("s2");
String s3=(String)session.getAttribute("s3");
String s4=(String)session.getAttribute("s4");
String s5=(String)session.getAttribute("s5");
String s6=(String)session.getAttribute("s6");
String s7=(String)session.getAttribute("s7");
String s8=(String)session.getAttribute("s8");
String s9=(String)session.getAttribute("s9");

Random rand=new Random();

int passw=rand.nextInt(60000);



String contentType = request.getContentType();
System.out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}

String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

//out.print(dataBytes);

int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/ROOT/EBANK/upload/"+saveFile);


//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

out.println("File saved as " +saveFile);
session.setAttribute("s10",saveFile);

}

String s10=(String)session.getAttribute("s10");

String msg="Username is"+s2+" "+"Password is "+passw;


int k=stmt.executeUpdate("insert into customerdetails values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
int m=stmt.executeUpdate("insert into login values('"+s2+"','"+passw+"','customer')");

String url="http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=aishwaryakodli.19@gmail.com:iloveyousagu&senderID=TEST SMS&receipientno="+s6+"&dcs=0&msgtxt="+msg+"&state=4";

response.sendRedirect(url);

%>

