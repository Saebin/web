<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>나의 과제 현황</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student Page</title>
    <link href="css/profile.css" rel="stylesheet" />
    <link href="css/table.css" rel="stylesheet"/>
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <link href="dist/css/timeline.css" rel="stylesheet">
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="bower_components/morrisjs/morris.css" rel="stylesheet">
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id="wrapper">
  <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="pro_main.jsp">Student Page</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="Login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
						<div class="row profile">
							<div class="profile-sidebar">
								<!-- SIDEBAR USERPIC -->
								<div class="profile-userpic">
									<img src="image/sung.jpg" class="img-responsive" alt="" />
								</div>
								<!-- END SIDEBAR USERPIC -->
								<!-- SIDEBAR USER TITLE -->
								<div class="profile-usertitle">
									<div class="profile-usertitle-name">성세빈</div>
									<div class="profile-usertitle-job">한성대학교</div>
								</div>
							</div>
						</div>
						</li>
                          <li>
                            <a href="stu_main.jsp"><i class="fa fa-dashboard fa-fw"></i> 메인페이지</a>
                        </li>
                        <li>
                            <a href="stu_task_situation.jsp"><i class="fa fa-edit fa-fw"></i> 과제현황</a>
                        </li>
                        <li>
                            <a href="stu_notify.jsp"><i class="fa fa-bell-o fa-fw"></i> 공지사항</a>
                        </li>
                        <li>
                            <a href="stu_evaluation.jsp"><i class="fa fa-user fa-fw"></i> 타학생평가</a>
                        </li>
                      
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
	<div id="page-wrapper">
		 <div class="row">
			<div class="col-lg-12">
                    <h1 class="page-header">나의 과제현황</h1>
            </div>			                
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            나의 과제현황
                        </div>  
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
				<thead>
					<tr>
						<th width="5%"></th>
						<th width="35%">과제명</th>
						<th width="15%">진행률</th>
						<th width="15%">마감여부</th>
						<th width="15%">제출여부</th>
						<th width="15%">제출하기</th>
					</tr>
				</thead>
				<!-- Table Header -->

				<!-- Table Body -->
				<tbody>

					<tr>
						<td>1</td>
						<td>1차 과제 / 쪽지시험</td>
						<td>100%</td>
						<td>Yes</td>
						<td>Yes</td>
						<td>
                            <a href="stu_task_submit.jsp"><i class="fa fa-dashboard fa-fw"></i> 파일명</a>
                        </td>
					</tr>
					<!-- Table Row -->

					<tr class="even">
						<td>2</td>
						<td>2차 과제</td>
						<td>100%</td>
						<td>Yes</td>
						<td>Yes</td>
						<td>
                            <a href="stu_task_submit.jsp"><i class="fa fa-dashboard fa-fw"></i> 파일명</a>
                        </td>
					</tr>
					<!-- Darker Table Row -->

					<tr>
						<td>3</td>
						<td>3차 과제</td>
						<td>20%</td>
						<td>No</td>
						<td>Yes</td>
						<td>
                            <a href="stu_task_submit.jsp"><i class="fa fa-dashboard fa-fw"></i> 파일명</a>
                        </td>
					</tr>

					<tr class="even">
						<td>4</td>
						<td>4차 과제 / 쪽지시험</td>
						<td>80%</td>
						<td>No</td>
						<td>Yes</td>
						<td>
                            <a href="stu_task_submit.jsp"><i class="fa fa-dashboard fa-fw"></i> 파일명</a>
                        </td>
					</tr>

					<tr>
						<td>5</td>
						<td>5차 과제</td>
						<td>100%</td>
						<td>Yes</td>
						<td>Yes</td>
						<td>
                            <a href="stu_task_submit.jsp"><i class="fa fa-dashboard fa-fw"></i> 파일명</a>
                        </td>
					</tr>

				</tbody>
				<!-- Table Body -->

			</table>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</div>
</div>

	
</body>
</html>