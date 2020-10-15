<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/messages_zh.js"></script>
<title>Insert title here</title>
<style type="text/css">
        body{
            background-color: gainsboro;
        }
        div{
            background-color: white;
            width:280px;
            height: 300px;
            padding: 20px;
            text-align: center;
        }
        
        #d{
            position: absolute;
            left: 700px;
            top: 300px;
        }
        input{
            margin: 5px;
        }
        button{
            margin: 20px;
            color: white;
            border: 0;
        }
        
    </style>
</head>
<body>
	<div id="d">
        <img src="./z/logo1.png">
        <p style="color:gainsboro;">智游视频管理系统后台登录</p>
        <form action="adminlogin">
            <input style="width:250px; height:30px; " type="text"  name="username" /> <br /> 
            <input style="width:250px; height:30px; " type="password" name="password" /> <br />
            <button style="width:240px; height:30px; background-color:red;"  type="submit" >登录</button>
        </form>
    </div>
    
    <script type="text/javascript">
		$().ready(function () {  //jQuery预备函数，加载完文件后就执行这个函数
			$("form").validate({
				/* 校验分为两部分，第一部分是校验规则 */
				rules:{
					name:{
						required:true
					},
					password:{
						required:true
					}
				},
				/* 对应规则的提示信息 */
				messages:{
					name:{
						required:"请输入账号"
					},
					password:{
						required:"请输入密码"
					}
				}
				
			});
		})
	</script>
	
</body>
</html>