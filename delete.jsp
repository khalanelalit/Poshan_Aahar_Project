<%@ page import="com.DbConnection" %>
<%@ page import="com.User" %>

<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=DbConnection.connect();
int id = Integer.parseInt(request.getParameter("Id"));
System.out.println((Object)(request.getParameter("Id")).getClass().getSimpleName());
System.out.println(id);
PreparedStatement stmt=con.prepareStatement("delete from screq where ScId=?");
stmt.setInt(1,id);
int i= stmt.executeUpdate();
if(i>0)
{
response.sendRedirect("operation.html");
}
else
{
	response.sendRedirect("addrequirement.jsp");
	System.out.println("contact to admin");	
}

%>
</body>
</html>