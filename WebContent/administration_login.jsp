<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.fm {
	text-align:center;
	font-size:20px;
}
</style>
</head>
<body>
	<br><br>
	<h1 align="center">管理员登录</h1>
	<br>
	<!-- 在页面上需要判断账号密码是否输入，如果没有输入，不能发送请求 -->
	<form class="fm" action="Administrationlogin.jhtml" method="post">
		请输入管理员账号：<input type="text" name="username" size="25"><br><br>
		请输入管理员密码：<input type="password" name="password" size="25"><br>
		<!-- EL 表达式,返回错误信息 -->	
       	<h5>${requestScope.error}</h5><br>
		<input type="submit" value="登录">
	</form>
</body>
</html>