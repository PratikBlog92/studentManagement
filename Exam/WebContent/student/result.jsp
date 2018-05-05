<%@page import="pojoClass.pojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.Dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Thanks <%=session.getAttribute("name") %> For Submitting Test<br> Please Contact</h1>
	<%
		try {

			Connection c = Dbconnect.getConnection();
			PreparedStatement ps = c.prepareStatement("SELECT `id` FROM `question`");
			ResultSet rs = ps.executeQuery();
			//Get Primary Key From DB
			ArrayList<String> al = new ArrayList();
			while (rs.next()) {
				al.add(rs.getString("id"));
			}
			//out.print("1");	
			//Create ArrayList count Size
			ArrayList<String> marks = new ArrayList();
			
			//Store all correct and incorrect in array
			for(String arr : al)
			{
				marks.add(request.getParameter(arr));
				//out.print(arr);
			}
			//out.print("2");
			//Calculate marks
			int totalMarks = 0 ;
			 for(String m : marks)
			{
				//System.out.print(m);
				 if(m.equals("correct"))
				{
					totalMarks ++;
				}
			}
			// out.print("3");
			//out.print("Total Marks : ->"+totalMarks);
			
			 HttpSession session2 = request.getSession();
			 pojo p = (pojo) session2.getAttribute("stud");
			
			
			Connection co = Dbconnect.getConnection();
			PreparedStatement ps1 = co.prepareStatement("INSERT INTO `student`(`name`, `phone`, `email`, `qualification`, `passout`, `testDate`, `mark`) VALUES (?,?,?,?,?,now(),?)");
			ps1.setString(1, p.getName());
			ps1.setString(2, p.getPhone());
			ps1.setString(3, p.getEmail());
			ps1.setString(4, p.getQualification());
			ps1.setString(5, p.getPassOutYear());
			ps1.setString(6, String.valueOf(totalMarks));
			ps1.executeUpdate(); 
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>