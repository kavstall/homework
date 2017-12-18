<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员窗口</title>
<style type="text/css">
	.main{
	width: 800px;
	height: 600px
	}
	.query{
	width: 800px;
	height: 80px;
	background: #FFFF99;}
	.show{
	width: 800px;
	height: 520px;
	}
	body {
	font-size:24px;
	margin:0 auto;
    text-align:center;
	}
</style>

	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		
		function query(){
			//1.获取	输入框的值，以id命名采用#号
			var username = $("#username").val();
			//利用ajax把用户名传入后台
			$.ajax({
				url: "adminQuery",
				type: "POST",
				//发送参数
				data: {"username":username},
				//返回结果
				success: function(result){
					//将后台传过来的json字符串转化成json格式
					var zNodes = JSON.parse(result);
					var i = 0;
					var html="<tr><td>用户名</td><td>密码</td><td>手机号</td></tr>";
					while(zNodes[i]!=null){
						html = html+"<tr><td>"+zNodes[i].username +
								"</td><td>"+zNodes[i].password +
								"</td><td>"+zNodes[i].phone +
								"</td></tr>"
						i++;
					}
					$("#table").html(html);
					
				}
			});
		}
		
		function reset(){
			//1.获取	输入框的值，以id命名采用#号
			var reset = $("#reset").val();
			if(reset==null){
				alert("请输入需要重置用户的账号");
				return;
			}
			//利用ajax把用户名传入后台
			$.ajax({
				url: "adminReset",
				type: "POST",
				//发送参数
				data: {"reset":reset},
				//返回结果
				success: function(result){
					alert(result);
				}
			});
		}
		
		window.onload=function (){
			<%
				if(session.getAttribute("username")!=null){
					if(session.getAttribute("username").equals("admins")){
					}else{
						response.sendRedirect("administration_login.jsp");
					}
				}
			%>
			//刚进入此页面时，自动查询所有的用户信息
			query();
		}
		
	</script>
</head>
<body align="center">
	<div class="main">
		<!-- 查询搜索框 -->
		<div class="query">
				
				请输入你要查找的用户名：<input type="text" id="username" onchange="query()"><br>
				请输入你要重置密码的用户名：<input type="text" id="reset">
				<input type="button" value="重置" onclick="reset()" >
		</div>
		
		<!-- 信息显示框 -->
		<div class="show">
			<table id="table" border="1px" >
			</table>
		</div>
	</div>
</body>
</html>