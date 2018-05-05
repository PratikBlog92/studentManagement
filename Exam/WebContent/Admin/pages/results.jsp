<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

</head>
<body>
 <%
            	try{
            		
            	Connection co =	Dbconnect.getConnection();
            	PreparedStatement ps = co.prepareStatement("SELECT * FROM `student`");
            	ResultSet rs = ps.executeQuery();
            	%>
            		<table class= "table">
            			<tr>
            				<th>id</th>
            				<th>name</th>
            				<th>phone</th>
            				<th>email</th>
            				<th>qualification</th>
            				<th>passout</th>
            				<th>testDate</th>
            				<th>mark</th>
            			</tr>
            			
            		
            	<%
		            	while(rs.next())
		            	{
		            		%>
		            	<tr>
            				<th><%= rs.getString("id") %></th>
            				<th><%= rs.getString("name") %></th>
            				<th><%= rs.getString("phone") %></th>
            				<th><%= rs.getString("email") %></th>
            				<th><%= rs.getString("qualification") %></th>
            				<th><%= rs.getString("passout") %></th>
            				<th><%= rs.getString("testDate") %></th>
            				<th><%= rs.getString("mark") %></th>
            			</tr>
		            		<%
		            	}
		            	
		            	}catch(Exception e){
		            		e.printStackTrace();
		            }
            %>
           		 </table>
           
</body>
</html>