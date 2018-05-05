<%@page import="pojoClass.studentPojo"%>
<%@page import="student.studService"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Installment 2</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
<jsp:include page="/Admin/reuse/header.jsp"></jsp:include>
    <!-- Page Content -->
     <%
        if(request.getParameter("id") != null)
         	{
				try{
					String id = request.getParameter("id");
					Connection co = Dbconnect.getConnection();
					PreparedStatement ps = co.prepareStatement("SELECT * FROM `studentinfo` WHERE `id` = ?");
					ps.setString(1,id);
					ResultSet rs = ps.executeQuery();
					
					while(rs.next())
					{
					
     %>
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Installment 2</h1>
                </div>
            </div>
                <!-- ... Your content goes here ... -->
				<form>
				<div class="well">
				<input type="hidden" name="studId" value="<%= rs.getString("id")%>">
				<lable>Name :</lable><br>
					<input type="text" name="name" class="form-control" placeholder="Enter Name" required value="<%= rs.getString("name")%>">
				
				<lable>Cource :</lable><br>
					<input type="text" name="cource" class="form-control" placeholder="Enter Cource" required value="<%= rs.getString("cource")%>">
					
				<lable>Email :</lable>	<br>
					<input type="email" name="email" class="form-control" placeholder="Enter Email" required value="<%= rs.getString("email")%>">
					
				<lable>Mobile :</lable>	<br>
					<input type="number" name="phone" class="form-control" placeholder="Enter Mobile" required value="<%= rs.getString("mobile")%>">
					
				<lable>Total Fee :</lable>	<br>
					<input type="number" name="totalFee" class="form-control" placeholder="Enter Total Fee" required value="<%= rs.getString("totalFee")%>">
				</div>
				<div class="well">	
				<lable>Installment 1 :</lable>	<br>
					<input type="number" name="install1" class="form-control" placeholder="Enter installment1" required value="<%= rs.getString("installment1")%>">
				
				<lable>Installment 1 Date:</lable>	<br>
					<input type="text" name="install1date" class="form-control" placeholder="Enter installment1" required value="<%= rs.getString("dateOfinstallment1")%>">	
					
				<lable>Balence :</lable><br>
					<input type="number" name="balence" class="form-control" placeholder="Enter balence" required value="<%= rs.getString("balence")%>" disabled="disabled">
				</div>
				<div class="well">
				<lable>Installment 2 :</lable><br>
					<input type="text" name="install2" class="form-control" placeholder="Enter Installment" required">
					
				<lable>Next Installment Date :</lable><br>	
					<input type="date" name="date2" class="form-control" placeholder="Enter Installment 2" required">
					
				<lable>Balence :</lable>	<br>
					<input type="number" name="balence2" class="form-control" placeholder="Enter balence" required">
				</div>	
					<input type="submit" value="Submit" class="btn btn-success">
				</form>
				
            	</div>
            	<div class="col-sm-4"></div>
            </div>
            
            <%	
        	
					}
				
				}catch(Exception e)
				{
					e.printStackTrace();
				}
            	}
            %>

        </div>

<%
		if(request.getParameter("install2") != null)
		{
			String name = request.getParameter("name");
			String cource = request.getParameter("cource");
			String email = request.getParameter("email");
			int totalFee = Integer.parseInt(request.getParameter("totalFee"));
			int install1 = Integer.parseInt(request.getParameter("install1"));
			String phone = request.getParameter("phone");
			String install1date = request.getParameter("install1date");
						
			int studId = Integer.parseInt(request.getParameter("studId"));
			int install2 =Integer.parseInt(request.getParameter("install2"));
			String date2 = request.getParameter("date2");
			int balence2 = Integer.parseInt(request.getParameter("balence2"));
						
			studentPojo sp = new studentPojo(studId,name,email,phone,totalFee,install1,install1date,install2,"",balence2,date2,cource);
			
			studService s = new studService();
			Boolean b =  s.regStudWithSecondInstallment(sp);
			
			if(b == true)
			{
				session.setAttribute("student", sp);

				response.sendRedirect("/Exam/Admin/studRecipt.jsp");
				
			}
			

		}
%>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/startmin.js"></script>

</body>
</html>
