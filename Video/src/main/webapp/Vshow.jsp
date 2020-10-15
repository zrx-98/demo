<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./js/base.css">
<link rel="stylesheet" href="./js/css.css">
<link rel="icon" href="http://localhost:8080/video/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
</head>

<body class="w100" style="padding-top: 0px;">
<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>


			<div id="userBlock" style="float:right">
				<a>退出</a>
				<a id="login_open">登录</a>
			</div>
			
			
		<a onclick="JavaScript:addFavorite2()"><img src="./z/sc.png" draggable="false">加入收藏</a>
		
		<a target="_blank"><img src="./z/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="./z/phone.png" draggable="false"> 0371-88888598　　4006-371-555</a>

	</div>
</header>


    <div id="app">
        <!--banner图-->
        <div class="banner">
        	<img alt="" src="./z/banner-1.jpg" width="100%" height="470px;">
        </div>

        <!--面包屑导航-->
        <div class="container mian-nav" id="navDiv">公开课 / WEB前端</div>
		
		<c:forEach items="${Clist}" var="c">
		<c:if test="${c.subject_id==subject.id}">
	        <div class="classify">
	            <div class="container" id="dataContainer">
	            	<div class="section">
	            		<div class="classifyName">
	            			<p class="title title-first">
								${c.course_title}
	            			</p>
	            		</div>
	            			<div class="kcIntro">
	            				<p class="int"><span>课程介绍：</span>
									${c.course_desc}
	            				</p>
	            			</div>
		           		<ul>
		           			<c:forEach items="${Vlist}" var="v">
		           			<c:if test="${v.course_id==c.id}">
			            		<li class="section-main" onclick="getVideo(217)">
			            		<a href="Playshow?id=${subject.id}&&Vid=${v.id}&&Cid=${c.id}&&Sid=${v.speaker_id}">
			            		<div class="thum" style="background-image: url(${v.image_url})"></div>
			            		</a>
			            		<p>${v.title}</p>
			            		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./z/count.png" alt="">${v.play_num}</span>
			            			<span class="duration" title="视频时长"><img src="./z/player.png" alt="">${v.time}</span>
			            		</div>
			            		</li>
			            	</c:if>
		            	    </c:forEach>
		          	 	</ul>
	           		</div>
	        	</div>
	    	</div>
    	</c:if>
    	</c:forEach>

        
       <!--  <div class="classify">
            <div class="container" id="dataContainer"><div class="section"><div class="classifyName"><p class="title title-first">前端开发与Git入门</p></div><div class="kcIntro"><p class="int"><span>课程介绍：</span>
            Git是一款免费、开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。经过本章课程学习你将轻松入门，学会使用Git管理自己的源代码，让自己的开发之路井井有条，想进一步学习Git进阶部分的同学可报名智游前端开发课程。
            </p></div><ul>
             
             		<li class="section-main" onclick="getVideo(245)">
             		<div class="thum" style="background-image: url()"></div>
             		<p>Git的安装及配置</p>
             		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./z/count.png" alt="">208</span>
             		<span class="duration" title="视频时长"><img src="./z/player.png" alt="">320</span></div>
             		</li>
             	
             	            
            </ul></div>
        </div>
    </div>

     
        <div class="classify">
            <div class="container" id="dataContainer"><div class="section"><div class="classifyName"><p class="title title-first">每天20分钟轻松入门React</p></div><div class="kcIntro"><p class="int"><span>课程介绍：</span>
            适合有一定HTML+JS基础、想学习React的同学。本课程循序渐进、浅显易懂，非常适合React入门学习。想进一步学习和使用React进行开发的同学可以报名智游前端开发课程。
            </p></div><ul>
             
             		<li class="section-main" onclick="getVideo(224)">
             		<div class="thum" style="background-image: url()"></div>
             		<p>React快速体验-组件</p>
             		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./z/count.png" alt="">191</span>
             		<span class="duration" title="视频时长"><img src="./z/player.png" alt="">907</span></div>
             		</li>

             	            
            </ul></div>
        </div>
    </div> -->

    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="./z/footer_logo.png" alt="" draggable="false">
		</li>
		<li class="mt25">
			<h3>各校区地址</h3>
			<ul>
				<li>总部地址<br>中国-郑州经济技术开发区河南省通信产业园六层</li>
				<li>郑州校区一<br>中国-郑州经济技术开发区第一大街与经北一路</li>
				<li>郑州校区二<br>中国-郑州经济技术开发区第四大街经开人才市场七楼</li>
				<li>郑州校区三<br>中国-郑州经济技术开发区第八大街河南省留学生创业园九层、十层</li>
				<li>西安分校<br>中国-西安莲湖区　联系人：梁老师 13201570801</li>
			</ul>
		</li>
		<li class="mt25">
			<h3>联系我们</h3>
			<ul id="foo_icon">
				<li>中国-郑州经济技术开发区经北三路河南通信产业园六层</li>
				<li>e-mail:zy@zhiyou100.com</li>
				<li>电话:4006-371-555 0371-88888598</li>
				<li class="erwei">
					<br>
					<div>
						<img class="weixin" src="./z/a_002.png" alt="" draggable="false">
						<img class="weibo" src="./z/a.png" alt="" draggable="false">
					</div>
				</li>
			</ul>
		</li>
	</ul>
	<div class="record">智游教育 © 豫ICP备17000832号-1 　河南智游臻龙教育科技有限公司</div>
</footer>


<!--登录注册弹出框-->
<div class="mask hidden" id="login">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./z/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="http://localhost:8080/Voids/#">
				<h3>快速登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email">
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div>
				<input onclick="return commitLogin()" value="登　录" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="login_close">关　闭</span>
		</div>
	</div>
</div>
<div class="mask hidden" id="reg">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./z/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="http://localhost:8080/Voids/user/insertUser.action">
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span id="emailMsg"></span>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="passMsg"></span>
				<div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%;  display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;"><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas></div>
				</div>
				<input onclick="return commitRegForm();" value="注　册" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="reg_close">关　闭</span>
		</div>
	</div>
</div>



<form action="http://localhost:8080/Voids/">
	<input type="text" value="1" id="isLogin">
</form>

    
<script src="./js/jquery-1.js"></script>
<script src="./js/gVerify.js"></script>
<script src="./js/index.js"></script>
  


</div></body></html>