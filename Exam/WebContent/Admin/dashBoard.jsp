<%@page import="dashBoard.Dash"%>
<%@page import="notification.paymentNotification"%>
<%@page import="pojoClass.studentPojo"%>
<%@page import="java.util.List"%>
<%@page import="email.sendMail"%>
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
<%
	 List<studentPojo> list = paymentNotification.todaysPendingPayment();
	 boolean b = sendMail.mailSend(list);
%>

<div id="wrapper">

    <!-- Navigation -->
<jsp:include page="/Admin/reuse/header.jsp"></jsp:include>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
            </div>

            <!-- ... Your content goes here ... -->
            
			            <div class="row">
			                    <div class="col-lg-3 col-md-6">
			                        <div class="panel panel-primary">
			                            <div class="panel-heading">
			                                <div class="row">
			                                    <div class="col-xs-3">
			                                        <i class="fa fa-comments fa-5x"></i>
			                                    </div>
			                                    <div class="col-xs-9 text-right">
			                                        <div class="huge"><%=Dash.getStudentCount() %></div>
			                                        <div>Number of Students</div>
			                                    </div>
			                                </div>
			                            </div>
			                            <a href="#">
			                                <div class="panel-footer">
			                                    <span class="pull-left">View Details</span>
			                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
			
			                                    <div class="clearfix"></div>
			                                </div>
			                            </a>
			                        </div>
			                    </div>
			                    <div class="col-lg-3 col-md-6">
			                        <div class="panel panel-green">
			                            <div class="panel-heading">
			                                <div class="row">
			                                    <div class="col-xs-3">
			                                        <i class="fa fa-tasks fa-5x"></i>
			                                    </div>
			                                    <div class="col-xs-9 text-right">
			                                        <div class="huge"><%=Dash.getTotalFee() %></div>
			                                        <div>Total Fee</div>
			                                    </div>
			                                </div>
			                            </div>
			                            <a href="#">
			                                <div class="panel-footer">
			                                    <span class="pull-left">View Details</span>
			                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
			
			                                    <div class="clearfix"></div>
			                                </div>
			                            </a>
			                        </div>
			                    </div>
			                    <div class="col-lg-3 col-md-6">
			                        <div class="panel panel-yellow">
			                            <div class="panel-heading">
			                                <div class="row">
			                                    <div class="col-xs-3">
			                                        <i class="fa fa-shopping-cart fa-5x"></i>
			                                    </div>
			                                    <div class="col-xs-9 text-right">
			                                        <div class="huge"><%=Dash.getBalence() %></div>
			                                        <div>Total Balance Amount</div>
			                                    </div>
			                                </div>
			                            </div>
			                            <a href="#">
			                                <div class="panel-footer">
			                                    <span class="pull-left">View Details</span>
			                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
			
			                                    <div class="clearfix"></div>
			                                </div>
			                            </a>
			                        </div>
			                    </div>
			                    <div class="col-lg-3 col-md-6">
			                        <div class="panel panel-red">
			                            <div class="panel-heading">
			                                <div class="row">
			                                    <div class="col-xs-3">
			                                        <i class="fa fa-support fa-5x"></i>
			                                    </div>
			                                    <div class="col-xs-9 text-right">
			                                        <div class="huge"><%=Dash.getTotalQuestionCount() %></div>
			                                        <div>Total Questions Count!</div>
			                                    </div>
			                                </div>
			                            </div>
			                            <a href="#">
			                                <div class="panel-footer">
			                                    <span class="pull-left">View Details</span>
			                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
			
			                                    <div class="clearfix"></div>
			                                </div>
			                            </a>
			                        </div>
			                    </div>
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
