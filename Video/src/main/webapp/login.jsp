<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="jquery/jquery.js"></script>
<script src="jquery/jquery.validate.min.js"></script>
<script src="jquery/messages_zh.js"></script>
<title>登录</title>
<style type="text/css">
	body {
		text-align:center
		margin: 0px;
		padding: 0px;
		background-color: #ECF0F5;
	}
	#a {
		height: 400px;
		width: 400px;
		background-color: #FFFFFF;
		-webkit-box-shadow: 2px 2px 5px #909090;
		margin:0 auto;
	}
	#b {
		height: 94px;
		width: 280px;
		padding-left: 55px;
		padding-top: 30px;
	}
	#c {
		height: 140px;
		width: 346px;
		padding-left: 27px;
		padding-top: 30px;
	}
	.c1 {
		height: 40px;
		width: 340px;
	}
	#d {
		height: 80px;
		width: 374px;
		padding-left: 27px;
	}
	#d1 {
		height: 45px;
		width: 345px;
		background-color: #B22222;
		font-size: 20px;
		font-weight: 400;
		color: #FFFFFF;
		border: none;
	}
</style>
</head>
<body>
	<form action="AdminLogin">
		<div id="a">
				<div id="b">
					<img src="./z/logo1.png">
				</div>
				<div id="c">
					<input class="c1" type="text" name="username"/>
					<br />
					<br />
					<input class="c1" type="password" name="password" />
				</div>
				<div id="d">
					<input id="d1" type="submit" value="登录" />
			    </div>
		</div>
	</form> 
	
	<script type="text/javascript">
		$().ready(
			function () {	//jquery预备函数，加载完文件后就执行这个函数
				$("form").validate({
					//校验分为两部分，第一部分是校验规则
					rules:{
						username:{
							required:true,
							minlength:1,
							maxlength:14
						},
						password:{
							required:true,
							minlength:1,
							maxlength:14
						}
					},
					//对应规则的提示信息
					messages:{
						username:{
							required:"❗请输入账号",
							minlength:"❗账号最少1位",
							maxlength:"❗账号最多14位"
						},
						password:{
							required:"❗请输入密码",
							minlength:"❗密码最少1位",
							maxlength:"❗密码最多14位"
						}
					}
				});
			}
		)
	</script>
	
</body>
</html>