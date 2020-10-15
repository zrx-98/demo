<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="./js/bootstrap.css" rel="stylesheet">

<script src="./js/jquery-1.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/confirm.js"></script>
<script src="./js/jquery.js"></script>
<script src="./js/message_cn.js"></script>

<style type="text/css">
th {
	text-align: center;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="jumbotron" style="padding-top: 15px; padding-bottom: 15px;">
		<div class="container">
			<h2>视频管理</h2>
		</div>
	</div>

	<form action="videoLikeAll">
		<div class="container">
		
			<input class="c1" type="text" name="title"/>
			
			<select name="speaker_id"  id="btn" class="btn btn-info dropdown-toggle">
					<option value="0" selected="selected">请选择老师</option>
					<c:forEach items="${speaker}" var="s">
						<option value="${s.id}">${s.speaker_name}</option>
					</c:forEach>
			</select>
			
			<select name="course_id"  id="btn" class="btn btn-info dropdown-toggle">
					<option value="0" selected="selected">请选择课程</option>
					<c:forEach items="${course}" var="c">
						<option value="${c.id}">${c.course_title}</option>
					</c:forEach>
			</select>
			
			<button type="submit" class="btn btn-info dropdown-toggle">
				查询</button>
		</div>
	</form>
	<form action="${q}">
		<div class="container">
			<a href="videoAdd">
				<button type="button" class="btn btn-info dropdown-toggle">
					添加</button>
			</a>
			<button type="submit" id="btn" class="btn btn-info dropdown-toggle">
				批量删除</button>
		</div>

		<div class="container" style="margin-top: 20px;">

			<table class="table table-bordered table-hover"
				style="text-align: center; table-layout: fixed;">
				<thead>
					<tr class="active">
						<th><input type="checkbox" id="all" name="ids"></th>
						<th>序号</th>
						<th style="width: 15%">名称</th>
						<th style="width: 40%">介绍</th>
						<th>讲师</th>
						<th>时长</th>
						<th>播放次数</th>
						<th>编辑</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${list}" var="l">
						<tr>
							<td><input type="checkbox" name="ids" value="${l.id }"></td>
							<td>${l.id}</td>
							<td>${l.title }</td>
							<td>${l.detail }</td>
							<td>${l.speaker.speaker_name }</td>
							<td>${l.time }</td>
							<td>${l.play_num }</td>
							<td><a href="VselectByID?id=${l.id }">✎</a></td>
							<td><a href="Vdelete?id=${l.id }">X</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="3">
							
							<a href="${q}?n=1&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">首页</a>
							
							<c:if test="${info.pageNum==1}">
								<a href="${q}?n=1&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">上一页</a>
							</c:if>
							<c:if test="${info.pageNum!=1}">
								<a href="${q}?n=${info.prePage}&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">上一页</a>
							</c:if>
							
							<c:forEach items="${info.navigatepageNums}" var="a">
								<a href="${q}?n=${a}&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">${a}</a>
							</c:forEach> 
							
							<c:if test="${info.pageNum==info.pages}">
								<a href="${q}?n=${info.pageNum}&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">下一页</a>
							</c:if>
							<c:if test="${info.pageNum!=info.pages}">
								<a href="${q}?n=${info.nextPage}&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">下一页</a>
							</c:if>
							 
							<a href="${q}?n=${info.pages}&speaker_id=${vv.speaker_id}&course_id=${vv.course_id}&title=${vv.title}">尾页</a>
							<br>
							共${info.total}条数据，共${info.pages}页，当前为${info.pageNum}页</td>
					</tr>
				</tbody>
			</table>

		</div>
	</form>




	<script type="text/javascript">
		function showAddPage() {
			location.href = "Course/addCourse.do";
		}
		function delCourseById(Obj, id, title) {

			Confirm.show('温馨提示：', '确定要删除' + title + '么？', {
				'Delete' : {
					'primary' : true,
					'callback' : function() {
						var param = {
							"id" : id
						};
						$.post("admin/course/delCourse.action", param,
								function(data) {
									if (data == 'success') {
										Confirm.show('温馨提示：', '删除成功');
										$(Obj).parent().parent().remove();
									} else {
										Confirm.show('温馨提示：', '操作失败');
									}
								});
					}
				}
			});
		}
	</script>


	<div id="modal-background" class=""></div>
	<div id="confirm-modal" class="modal fade role=" dialog"=""
		tabindex="-1">
		<div class="modal-dialog modal-undefined">
			<div class="modal-content">
				<div class="modal-header">
					<button id="modal-upper-close" class="close modal-close"
						aria-label="Close" type="button">
						<span aria-hidden="true">×</span>
					</button>
					<h4 id="modal-title" class="modal-title">Modal Title</h4>
				</div>
				<div id="modal-body" class="modal-body">Modal Message</div>
				<div id="modal-footer" class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div id="modal-background" class=""></div>
</body>
</html>