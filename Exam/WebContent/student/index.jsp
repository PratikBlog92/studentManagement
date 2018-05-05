<%@page import="pojoClass.pojo"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Student Info</title>
</head>
<body>
<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
	<h1 style="text-align: center;">Student Info</h1>
	
	<form style="margin-top: 50px;">
		<div class="form-group">
			<label for="exampleFormControlInput1">Name :</label>
			 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Name" name="name" required>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Phone :</label>
			 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Email" name="phone" required>
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Email address</label>
			 <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Enter Email" name="email" required>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Highest Qualification</label> 
			<select class="form-control" id="exampleFormControlSelect1" name="qual" required>
				<option>BE</option>
				<option>ME</option>
				<option>BSC</option>
				<option>MSC</option>
				<option>MCA</option>
				<option>BCA</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect2">PassOut Year</label>
			<select multiple class="form-control" id="exampleFormControlSelect2" name="year" required>
				<option>2008</option>
				<option>2009</option>
				<option>2010</option>
				<option>2011</option>
				<option>2012</option>
				<option>2013</option>
				<option>2014</option>
				<option>2015</option>
				<option>2016</option>
				<option>2017</option>
				<option>2018</option>
				<option>2019</option>
				<option>2020</option>
			</select>
		</div>
	<input type="submit" value="Submit" class="btn btn-success">
	
	</form>
<%
if(request.getParameter("year") != null)
{
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String qual = request.getParameter("qual");
	String year = request.getParameter("year");
	
	pojo p = new pojo(name,phone,email,qual,year);
	
	session.setAttribute("name", name);
	/* 	session.setAttribute("phone", phone);
	session.setAttribute("email", email);
	session.setAttribute("qual", qual);
	session.setAttribute("year", year); */
	
	session.setAttribute("stud", p);
	
	response.sendRedirect("/Exam/student/test.jsp");
}
	
%>
</div>
	<div class="col-sm-4"></div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>