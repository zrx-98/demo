<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		</style>
<title>Insert title here</title>
</head>
<body>
<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
	  <div class="container">
	          <h2>主讲人管理</h2>
	  </div>
	</div>
	
	<form action="speakerDeleteAll">
	<div class="container">
		<a href="addSpeaker.jsp">
	    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      添加
		</button>
		</a>
		<button type="submit" id="btn" class="btn btn-info dropdown-toggle">
		      批量删除
		</button>
	</div>
	
	<div class="container" style="margin-top: 20px;">
		
		<table class="table table-bordered table-hover" style="text-align: center;table-layout:fixed;">
      <thead>
        <tr class="active">
          <th><input type="checkbox" id="all" name="ids"></th>
          <th>序号</th>
          <th style="width:8%">名称</th>
          <th style="width:8%">职位</th>
          <th style="width:60%">简介</th>
          <th>编辑</th>
          <th>删除</th>
        </tr>
      </thead>
      <tbody>
        
       <c:forEach items="${list}" var="l">
        <tr>
          <td><input type="checkbox" name="ids" value="${l.id }"></td>
          <td>${l.id}</td>
          <td>${l.speaker_name }</td>
          <td>${l.speaker_job }</td>
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${l.speaker_desc}</td>
          <td><a href="speakerSelectByID?id=${l.id }">✎</a></td>
          <td><a href="speakerDelete?id=${l.id }">X</a></td>
         </tr>
       </c:forEach>
        </tbody>
      </table>
    
	</div>
	  </form>
		
	


	<script type="text/javascript">
		function showAddPage(){
			location.href="Course/addCourse.do";
		}
		function delCourseById(Obj,id,title){

			Confirm.show('温馨提示：', '确定要删除'+title+'么？', {
				'Delete': {
					'primary': true,
					'callback': function() {
						var param={"id":id};
						$.post("admin/course/delCourse.action",param,function(data){
							if(data=='success'){
								Confirm.show('温馨提示：', '删除成功');
								$(Obj).parent().parent().remove();
							}else{
								Confirm.show('温馨提示：', '操作失败');
							}
						});
					}
				}
			});
		}
	</script>
  

<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>