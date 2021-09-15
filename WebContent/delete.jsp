<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
out.println("hi");
if(n.length()>0){
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","yash2911");

PreparedStatement ps=con.prepareStatement("delete  from INBOX where id = '"+n+"' ");

out.print("<br>");
int s=ps.executeUpdate();
out.print("Mail has been successfully deleted");
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>
<jsp:forward page="inbox.jsp"></jsp:forward>