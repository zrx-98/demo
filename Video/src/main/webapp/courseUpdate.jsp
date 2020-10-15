<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>智游教育</title>

<link href="./js/bootstrap.css" rel="stylesheet">

<style type="text/css">
	.col-md-1 {
		padding-top: 20px;
	}
	
	.a1 {
		color: gray;
	}
	
	b {
		float: right;
	}
</style>

</head>

<body>
	<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
		<div class="container">
			<h2>修改课程</h2>
		</div>
	</div>

	<div class="container" style="margin-top: 20px;">
		<form id="infoForm" class="form-horizontal"  method="post" action="update">
			<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">所属学科</label>
			    
			    <div class="col-sm-10">
					<select name="subject_id" id="subjectId" class="form-control">
						<option value="0" selected="selected">请选择所属学科</option>
						<c:forEach items="${list}" var="l">
							<option value="${l.subject.id}">${l.subject.subject_name}</option>
						</c:forEach>
					</select>
			    </div>
			    
			  </div>
			
			<div class="form-group">
				<label for="subjectTitle" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-10">
					<input class="form-control" name="course_title" id="subjectTitle" value="${byID.course_title}" placeholder="课程标题" type="text">
				</div>
			</div>
			<div class="form-group">
				<label for="courseDesc" class="col-sm-2 control-label">简介</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="courseDesc" name="course_desc" rows="3">${byID.course_desc}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input name="id" value="${byID.id }" type="hidden">
					<button type="submit" class="btn btn-default">保存</button>
				</div>
			</div>
		</form>
	</div>

<script src="./js/jquery-1.js.下载"></script>
<script src="./js/bootstrap.js.下载"></script>
<script src="./js/confirm.js.下载"></script>
<script src="./js/jquery.js.下载"></script>
<script src="./js/message_cn.js.下载"></script>

<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>