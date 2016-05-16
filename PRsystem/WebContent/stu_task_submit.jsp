<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Student Page</title>
<link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link href="bower_components/metisMenu/dist/metisMenu.min.css"
   rel="stylesheet">
<link href="dist/css/timeline.css" rel="stylesheet">
<script type="text/javascript" src="SE2/js/HuskyEZCreator.js"></script>
<link href="dist/css/sb-admin-2.css" rel="stylesheet">
<link href="bower_components/morrisjs/morris.css" rel="stylesheet">
<link href="bower_components/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/Notify.css" />
<link href="css/profile.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/stu_task_submit.js"></script>
<script type="text/javascript" src="js/code.js"></script>
<link href="css/table.css" rel="stylesheet" />
<link href="bower_components/metisMenu/dist/metisMenu.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="css/style2.css" media="screen"
   title="no title" charset="utf-8">

</head>
<body>
   <div id="wrapper">
      <!-- Navigation -->
      <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span> <span
               class="icon-bar"></span> <span class="icon-bar"></span> <span
               class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="stu_main.jsp"><img src="image/Logo.png" alt="" style="max-width: 36%; height: auto;"/></a>
      </div>
      <!-- /.navbar-header -->

      <ul class="nav navbar-top-links navbar-right">
         <!-- /.dropdown -->
         <li class="dropdown"><a class="dropdown-toggle"
            data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
               <i class="fa fa-caret-down"></i>
         </a>
            <ul class="dropdown-menu dropdown-tasks">
               <li><a href="#">
                     <div>
                        <p>
                           <strong>Task 1</strong> <span class="pull-right text-muted">40%
                              Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                           <div class="progress-bar progress-bar-success"
                              role="progressbar" aria-valuenow="40" aria-valuemin="0"
                              aria-valuemax="100" style="width: 40%">
                              <span class="sr-only">40% Complete (success)</span>
                           </div>
                        </div>
                     </div>
               </a></li>
               <li class="divider"></li>
               <li><a href="#">
                     <div>
                        <p>
                           <strong>Task 2</strong> <span class="pull-right text-muted">20%
                              Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                           <div class="progress-bar progress-bar-info" role="progressbar"
                              aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                              style="width: 20%">
                              <span class="sr-only">20% Complete</span>
                           </div>
                        </div>
                     </div>
               </a></li>
               <li class="divider"></li>
               <li><a href="#">
                     <div>
                        <p>
                           <strong>Task 3</strong> <span class="pull-right text-muted">60%
                              Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                           <div class="progress-bar progress-bar-warning"
                              role="progressbar" aria-valuenow="60" aria-valuemin="0"
                              aria-valuemax="100" style="width: 60%">
                              <span class="sr-only">60% Complete (warning)</span>
                           </div>
                        </div>
                     </div>
               </a></li>
               <li class="divider"></li>
               <li><a href="#">
                     <div>
                        <p>
                           <strong>Task 4</strong> <span class="pull-right text-muted">80%
                              Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                           <div class="progress-bar progress-bar-danger"
                              role="progressbar" aria-valuenow="80" aria-valuemin="0"
                              aria-valuemax="100" style="width: 80%">
                              <span class="sr-only">80% Complete (danger)</span>
                           </div>
                        </div>
                     </div>
               </a></li>
               <li class="divider"></li>
               <li><a class="text-center" href="#"> <strong>See
                        All Tasks</strong> <i class="fa fa-angle-right"></i>
               </a></li>
            </ul> <!-- /.dropdown-tasks --></li>

         <!-- /.dropdown -->
         <li class="dropdown"><a class="dropdown-toggle"
            data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
               <i class="fa fa-caret-down"></i>
         </a>
            <ul class="dropdown-menu dropdown-user">
               <li><a href="stu_info_update.jsp"><i class="fa fa-user fa-fw"></i> User
                     Profile</a></li>
               <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
               </li>
               <li class="divider"></li>
               <li><a href="Login.jsp"><i class="fa fa-sign-out fa-fw"></i>
                     Logout</a></li>
            </ul> <!-- /.dropdown-user --></li>
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
                          <img src="image/fox-03.png" class="img-responsive" alt="" />
                        </div>
                        <!-- END SIDEBAR USERPIC -->
                        <!-- SIDEBAR USER TITLE -->
                        <div class="profile-usertitle">
                           <div class="profile-usertitle-name">������</div>
                           <div class="profile-usertitle-job">�Ѽ����б�</div>
                        </div>
                     </div>
                  </div>
               </li>
               <li><a href="stu_main.jsp"><i
                     class="fa fa-dashboard fa-fw"></i> ����������</a></li>
               <li><a href="stu_task_situation.jsp"><i
                     class="fa fa-edit fa-fw"></i> ������Ȳ</a></li>
               <li><a href="stu_notify.jsp"><i class="fa fa-bell-o fa-fw"></i>
                     ��������</a></li>
               <li><a href="stu_evaluation.jsp"><i
                     class="fa fa-user fa-fw"></i> Ÿ�л���</a></li>

            </ul>
         </div>
         <!-- /.sidebar-collapse -->
      </div>
      <!-- /.navbar-static-side --> </nav>

      <div id="page-wrapper">
         <div class="row">
            <div class="col-lg-12">
               <h1 class="page-header">���� ����</h1>
            </div>
            <div class="row">
               <div class="col-lg-12">
                  <div class="panel panel-default">
                     <div class="panel-heading">���� ����</div>
                     <!-- /.panel-heading -->
                     <div class="panel-body">
                        <div class="dataTable_wrapper">

                           <form method="post" action="#" id="frm">

                              <div class="form-group" align="center">
                                 <label class="col-sm-1 control-label"> ���� </label>
                                 <div class="col-sm-7">
                                    <input type="text" class="form-control" name="name" id="name"
                                       size="100">
                                 </div>
                              </div>
                              <br>
                              <div class="form-group" align="center">
                                 <div class="panel-heading">
                                 	<input type="hidden" name="smarteditor" id="text" value="" >
                                 	<textarea name="smarteditor_01" id="smarteditor_01" rows="10"
                                       class="form-control" cols="100"
                                       style="width: 100%; height: 100px;"></textarea>
                                       
                                    <textarea name="smarteditor" id="smarteditor" rows="10"
                                       class="form-control" cols="100"
                                       style="width: 100%; height: 100px;"></textarea>
                                    <textarea name="11" id="11" rows="10"
                                       class="form-control" cols="100"
                                       style="width: 100%; height: 100px;"></textarea>
									
                                 </div>
                              </div>


                              <div class="form-group" align="center">
                                 
                                    <center>
                                    	<input type="button" class="form-control" value="äũ" name="subscribeForm"  id="aa11"/>
                                       <input type="submit" class="form-control" value="�����ϱ�" name="subscribeForm"  id="savebutton"/>
                                    </center>
                              </div>
                              
                           </form>
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="bower_components/raphael/raphael-min.js"></script>
    <script src="bower_components/morrisjs/morris.min.js"></script>
    <script src="js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>   
</body>
</html>