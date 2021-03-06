
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.Dbconnect"%>
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

<title>Installment 2 Remains</title>

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

		<div id="page-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Installment 4 List</h1>
					</div>
				</div>
				<!-- ... Your content goes here ... -->

				<%
					try {
						Connection co = Dbconnect.getConnection();
						PreparedStatement ps = co.prepareStatement("SELECT * FROM `studentinfo` WHERE `installment1` != 0 AND `installment2` !=0 AND `balence` != 'NIL' AND `installment3` !=0 AND `installment4` =0");
						ResultSet rs = ps.executeQuery();
				%>
					<table class="table table-hover">
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>Total Fee</th>
							<th>Balence</th>
							<th>Next Installment</th>
							<th>Cource</th>
						</tr>
						<%
							while(rs.next())
							{
						%>
						<tr>
							<td><%=rs.getString("name") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("mobile") %></td>
							<td><%=rs.getString("totalFee") %></td>
							<td><%=rs.getString("balence") %></td>
							<td><%=rs.getString("nextInstallment") %></td>
							<td><%=rs.getString("cource") %></td>
							<td><a href="/Exam/Admin/installment3.jsp?id=<%=rs.getString("id")%>"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right">&#xf0a9</i></a></td>
						</tr>
						<%
							}
						%>
					</table>
				<%	                
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</div>
			<div class="col-sm-4"></div>
		</div>


	</div>


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
