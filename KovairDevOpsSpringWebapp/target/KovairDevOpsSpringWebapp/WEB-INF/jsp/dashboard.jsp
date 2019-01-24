<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<script src="scripts/angular.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link rel="stylesheet" href="css/mySite.css" type="text/css" />
<script src="js/app.js"></script>
<script src="js/controller.js"></script>
<script src="js/service.js"></script>
</head>
<body data-ng-app="DevOpsDemoApp">
	<nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" class = "navbar-brand" ><img src="images/Kovair_logo_transp-white-Employee-Management.png" /></a>
            </div>

            <ul class="nav navbar-nav">
                <li class="active"><a href="ViewDemoPage.html">HOME</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Leave<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Apply Leave</a></li>
                        <li><a href="#">Leave Status</a></li>
                        <li><a href="#">Leave Balance</a></li>
                    </ul>
                </li>
                <li><a href="AddEmployee.html">Add Employee</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span>Hello Patty Brown</a></li>
                <li><a href="login.jsp" id="logoutClick"  class="btn btn-link btn-md">Log Out</a></li>
            </ul>
        </div>
    </nav>
	<div class="body-content" data-ng-controller="dashboardController">
		<div class=" container-fluid">
		<div class="col-md-6">
		<div id="left-dashboard-content">
		        <div class="container-float">
		            <div class="panel-group">
		                <div class="panel panel-info">
		                    <div class="panel-heading myHeading">Employee Basic Details</div>
		                    <div id="Employee-Basic-Div" class="panel-body">
		                        <div class="well well-sm col-sm-12">
		                            <div id="imgContainerDiv" class="col-sm-4" style="float: left">
		                                <img src="images/FemaleUser.jpg" id="EmpDashboardImg" class="img-rounded" alt="Image" width="150" height="150" />
		                            </div>
		                            <div id="emp-basic-info" class="col-sm-8 basicInfo">
		                                <h2 class="empNameHeading">{{selectedEmployee.firstName}} {{selectedEmployee.lastName}}</h2>
		                                Designation : {{selectedEmployee.designation}}
		                                <br />
		                                Date of Joining : {{selectedEmployee.doj}}
		                                <br />
		                                Supervisor : {{selectedEmployee.supervisor}}
		                                <br />
		                                Contact No : {{selectedEmployee.phone}}
		                                <br />
		                                Email : {{selectedEmployee.email}}
		                            </div>
		                        </div>
		                            <div class="well well-sm">
		                                <a class="btn btn-link"><span class="badge">1</span> Waiting For Your Approval</a>
		                            </div>
		                    </div>
		                </div>
		                <div class="panel panel-info">
		                    <div class="panel-heading myHeading">Employee Leave Balance</div>
		                    <div id="Leave-Basic-Div" class="panel-body">
		                       
		                           Available CL : 1.25 &nbsp;&nbsp;&nbsp;&nbsp;
		                        
		                           Available SL : 1.60 &nbsp;&nbsp;
		                            
		                           Available EL : 14.56&nbsp;&nbsp;&nbsp;&nbsp;
		                       
		                           Available RH : 2.00 &nbsp;&nbsp;
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		 </div>
		<div class="col-md-6"> 
		<div id="right-dashboard-content" >
		        <div class="container-float">
		            <div class="panel panel-warning">
		                <div class="panel-heading myHeading">All Employee List <a href="AddEmployee.html" class="linkIconSpan">Add New Employee</a> </div>
		                <div class="panel-body">
		                    <div id="grid1" data-ui-grid="gridOptions" class="grid"></div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		</div>
	</div>
</body>
</html>