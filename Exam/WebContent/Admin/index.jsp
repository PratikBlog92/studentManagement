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

    <title>Startmin - Bootstrap Admin Theme</title>

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
                    <h1 class="page-header">Page Title</h1>
                </div>
            </div>

            <!-- ... Your content goes here ... -->
            
            <div class="row">
            	<div class="col-sm-4"></div>
            	<div class="col-sm-4">
            		
            		<form action="" method="post">
            			<textarea rows="" cols="" class="form-control" name="question" placeholder="Enter Questions" required ></textarea>
            			<input type="text" name="opt1" placeholder="Enter Option 1"  class="form-control" required >
            			<input type="text" name="opt2" placeholder="Enter Option 2"  class="form-control" required >
            			<input type="text" name="opt3" placeholder="Enter Option 3"  class="form-control" required >
            			<input type="text" name="opt4" placeholder="Enter Option 4"  class="form-control" required >
               			<input type="text" name="ans" placeholder="Enter Answer"  class="form-control" required >
               			<input type="submit" value="Submit" class="btn">
            		</form>
            	<%
            		if(request.getParameter("ans") != null)
            		{
            			String question = request.getParameter("question");
            			String opt1 = request.getParameter("opt1");
            			String opt2 = request.getParameter("opt2");
            			String opt3 = request.getParameter("opt3");
            			String opt4 = request.getParameter("opt4");
            			String ans = request.getParameter("ans");

            			try{
            					Connection conn = 	Dbconnect.getConnection();
            					PreparedStatement ps = conn.prepareStatement("INSERT INTO `question`(`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES (?,?,?,?,?,?)");
            					ps.setString(1, question);
            					ps.setString(2, opt1);
            					ps.setString(3, opt2);
            					ps.setString(4, opt3);
            					ps.setString(5, opt4);
            					ps.setString(6, ans);
            					ps.executeUpdate();
            		%>
            				<script type="text/javascript">
            					alert("Data Submit Sucessfully ...!")
            				</script>
            		<%			
            					
            			}catch(Exception e)
            			{
            				e.printStackTrace();
            			}
            		}
            	%>
            	</div>
            	<div class="col-sm-4"></div>
            </div>

        </div>
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
