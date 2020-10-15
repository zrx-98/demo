<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>智游教育</title>
		
<link href="./js/bootstrap.css" rel="stylesheet">

<script src="./js/jquery-1.js.下载"></script>
<script src="./js/bootstrap.js.下载"></script>
<script src="./js/confirm.js.下载"></script>
<script src="./js/jquery.js.下载"></script>
<script src="./js/message_cn.js.下载"></script>

		<style type="text/css">
		th {
			text-align: center;
		}
		#down{
			width: 100%;
            height: 800px;
		}
		iframe{
            width:100%; 
            height:750px;
        }
		</style>
	</head>

	<body>
<nav class="navbar-inverse">
	<div class="container">
		
		<div class="navbar-header">
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a href="videoSelect" target="content">视频管理</a></li>
				<li><a href="speakerSelect" target="content">主讲人管理</a></li>
				<li class="active"><a href="courseSelect" target="content">课程管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>${admin.username}</span>
				<i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;
				<a href="exit"  class="navbar-link">退出</a>
			</p>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

    <div id="down">
        <iframe src="" frameborder="0" name="content" ></iframe>
    </div>

	
	</body>
</html>