<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    
<link rel="stylesheet" href="./js/base.css">
<link rel="stylesheet" href="./js/css.css">
<link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
</head>

<body class="w100" style="padding-top: 0px;">
<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>

			<div id="userBlock" style="float:right">
				<c:if test="${ not empty user }"><!-- 这表示user判断不为null -->
					<a href="exit">退出</a>
				</c:if>
				
				<c:if test="${empty user}"><!--这表示user判断为null  -->
					<a target="_self" id="login_open">
						登录</a>	
						<a id="reg_open">注册</a>	
				</c:if>
				<a target="_self" href="">
				${user.email}</a>
				
			</div>
			
			

		<a onclick="JavaScript:addFavorite2()"><img src="${pageContext.request.contextPath}/z/sc.png" draggable="false">加入收藏</a>
		
		<a target="_blank" href="adminLogin.jsp"><img src="${pageContext.request.contextPath}/z/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="${pageContext.request.contextPath}/z/phone.png"> 0371-88888598　　4006-371-555</a>

	</div>
</header>


    <div id="app">
        <!--banner图-->
        <div class="banner">
        	<img alt="" src="${pageContext.request.contextPath}/z/banner-1.jpg" width="100%" height="470px;">
        </div>

        <!--面包屑导航-->
        <c:forEach items="${subject}" var="s">
      <c:if test="${s.id==i}">
        	
        <div class="container mian-nav" id="navDiv">公开课 /${s.subject_name}</div>
			
		<c:forEach items="${course }" var="c">
			<c:if test="${c.subject_id==i }" >  
        <div class="classify">
            <div class="container" id="dataContainer">
            <div class="section">
            <div class="classifyName">
            <p class="title title-first">${c.course_title}</p>
            </div>
            <div class="kcIntro">
            <p class="int">
            <span>课程介绍：</span>
      		 ${c.course_desc}
            </p>
            
            </div>
            
            <ul>
            <c:forEach items="${video}" var="l" >
            		    <c:if test="${l.course_id==c.id}"> 
            		      	
             		<li class="section-main" onclick="getVideo(217)">
             		<a href="CSVselectPlay?i=${i}&n=${l.speaker_id}&x=${l.id}">
             		<div class="thum" style="background-image: url(${l.image_url })"></div>
             		<p>${l.title}</p>             		
             		<div class="classify-v-info">
             		<span class="count" title="观看次数">
             		<img src="./z/count.png" alt="">${l.play_num}</span>
             		<span class="duration" title="视频时长">
             		<img src="./z/player.png " alt="">${l.time}</span></div>
             		</a>
             		</li>  
             		 </c:if>       	
            	   </c:forEach>          
            </ul>
           
            </div>
            
        </div>
        
    </div>
     </c:if>    
    </c:forEach>
    </c:if>
</c:forEach>
       
       
    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="${pageContext.request.contextPath}/z/footer_logo.png" alt="" draggable="false">
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
						<img class="weixin" src="${pageContext.request.contextPath}/z/a_002.png" alt="" draggable="false">
						<img class="weibo" src="${pageContext.request.contextPath}/z/a.png" alt="" draggable="false">
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
			<form id="loginForm" action="Userlogin">
				<h3>快速登录</h3>
				<input id="loginEmai" placeholder="请输入邮箱" name="email" type="email">
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<div id="forget">
					<a href="">忘记密码？</a>
				</div><i id="ii"></i>
				<input onclick="return commitLogin1()" value="登　录" type="button" style="width: 100%">
				<!-- onclick="return commitLogin()" -->
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
			<form id="regForm" action="addUser">
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email">
				<span id="emailMsg"></span>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password">
				<span id="passMsg"></span>
				<div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;">
					<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
					<canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
					</div>
				</div>
				<input onclick="return commitRegForm1();" value="注　册" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="reg_close">关　闭</span>
		</div>
	</div>
	
</div>
 
<script src="./js/jquery-1.js"></script>
<script src="./js/gVerify.js"></script>
<script src="./js/index.js"></script>

<script type="text/javascript">
function commitLogin1(){
	   
	   var email =$("#loginEmai").val();
	   var password =$("#loginPassword").val();
	   if(null!=email && email!="" && null!=password && password!=""){
	        var params=$("#loginForm").serialize();
	       // alert(params);
	        // post要小写
	        $.post("Userlogin",params,function(data){
	         alert(data);
	                 if(data=="ok"){
	                      document.location.reload();
	                   }else {
	                	   $("#ii").text("账号密码错误");
					}
	        });
	        
	        
	       /*  return true; */
	   }
	   
	/*    return false; */
	}
	
	
function commitRegForm1(){
    
    var code =$("input[name='yzm']").val();
    //alert(code);
    //alert(regIsCommitEmail+","+regIsCommitPsw);
        if(regIsCommitEmail && regIsCommitPsw && verifyCode.validate(code)){
             //用js提交表单
            // $("#regForm").commit();
            
            $.ajax({
             
               url:"front/user/insertUser.action",
               data:$("#regForm").serialize(),
               type:"POST",
               success:function(data){
                  if(data=='success'){
                    /* //注册框消失
                     $("#reg").addClass("hidden");
                     
                     $("#account").text($("#regEmail").val());
                     //将注册的user信息展示
                     $("#regBlock").css("display","none");
                     $("#userBlock").css("display","block");*/
					   document.location.reload();
                     
                  }
               },
               error:function(){
                  alert("联系管理员");
               }
            
            });
        
        return true;
        
    }else{
       return true;
    }
     
}

/*注册校验  */
var b= false;
$("#regEmail").blur(function(){
	
		$.ajax({
			url:"selectbyname",			/*请求的地址*/
			data:{					/*请求服务器时传递的数据集合*/
				name:$("#regEmail").val()/*key:value*/
			
			},
			success:function(data){/*请求成功后执行的方法*/
				
				if(data=="ok"){
					$("#i").text("可以使用");
					b=true;
				}else{
					$("#i").text("email不可以使用");
					b=false;
				}
			}
		})
	})
	$("form").submit(function () {
		return b;
	})

</script>


    
    



</body>
</html>