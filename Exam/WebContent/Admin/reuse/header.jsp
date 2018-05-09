    <%@page import="java.util.List"%>
<%@page import="notification.paymentNotification"%>
<%@page import="pojoClass.studentPojo"%>
<%@page import="java.util.ArrayList"%>
<%
    	 List <studentPojo> al =	paymentNotification.todaysPendingPayment();
    	 
			
   %>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">DataCouncil</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="#"><i class="fa fa-home fa-fw"></i> Website</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i><span class="badge" style="background-color: red;"><%=al.size()%></span><b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                <%
                	for(studentPojo sp : al)
                	{
                %>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> <%=sp.getName()%>
                                <span class="pull-right text-muted small"><%=sp.getMobile()%></span>
                            </div>
                        </a>
                    </li>
                    
                <%
					}
                %>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="/Exam/Admin/todayMonyList.jsp">
                            <strong>Toadays Money List</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Atharv <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="/Exam/Admin/dashBoard.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
                    <li>
                    	 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Enquiry<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/Exam/Admin/marks.jsp">Marks</a>
                            </li>
                         </ul>
                         
                    </li>
                    
                    <li>
                    	 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Test<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/Exam/Admin/marks.jsp">Add Category</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/index.jsp">Add Questions</a>
                            </li>
                            
                            <li>
                                <a href="#">Add Test</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/marks.jsp">Result</a>
                            </li>
                         </ul>
                         
                    </li>
                    
                     <li>
                    	 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Students<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/Exam/Admin/StudentsInfo.jsp">Registration/Installment 1</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/installment2List.jsp">Installment 2</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/installment3List.jsp">Installment 3</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/installment4List.jsp">Installment 4</a>
                            </li>
                            
                            <li>
                                <a href="/Exam/Admin/installment5List.jsp">Installment 5</a>
                            </li>
                         </ul>
                         
                    </li>
                    
                    <li>
                    	 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Search<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/Exam/Admin/searchByFees.jsp">Fees</a>
                            </li>
                            
                             <li>
                                <a href="/Exam/Admin/searchByMarks.jsp">Mark</a>
                            </li>
                         </ul>
                    </li>
                    
                    
                    <li>
                    	 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Notifications<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/Exam/Admin/searchByFees.jsp">Fees</a>
                            </li>
                            
                             <li>
                                <a href="/Exam/Admin/searchByMarks.jsp">Mark</a>
                            </li>
                         </ul>
                    </li>
                    
                    <!-- <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Third Level <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li> -->
                </ul>

            </div>
        </div>
    </nav>
