<%@page import="com.EnggRoom.DBConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
String query=request.getParameter("query");
String email=request.getParameter("email");
Class.forName("org.postgresql.Driver");
Connection con=DBConnection.getConnection();
PreparedStatement ps=con.prepareStatement("insert into query values(?,?)");
ps.setString(1,query);
ps.setString(2,email);
int s=ps.executeUpdate();
}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>
