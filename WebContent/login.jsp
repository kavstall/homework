<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册</title>

	<link rel="stylesheet" type="text/css" href="css/login_style.css" media="screen, projection">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">
		//实现加载完成验证码自动刷新一次
		window.onload = function(){
			refresh();
		}
		//实现点击验证码图片，自动刷新
		function refresh(){
			var src = document.getElementById("code").src+"?time="+ new Date().getMilliseconds();
			document.getElementById('code').src=src;
		}
		
	</script>
	
</head>
<body>
	<header>
		<h1>欢迎登录</h1>
	</header>
	<!-- BEGIN WRAPPER DIV -->
	<div id="wrapper">
		<!-- BEGIN FORM SECTION -->
		<ul id="form-section">
			<!-- BEGIN SIGN IN FORM -->
			<form class="sign-in-form" action="/homework/login.jhtml" method="post">
			<li>
				<label>
					<span>Username</span>
					<input placeholder="Please enter your username" name="username" pattern="[a-zA-Z0-9]{6,}" type="text" tabindex="1" title="It must contain the username that you have chosen at registration" required autofocus>
				</label>
			</li>
			<li>
				<label>
					<span>Password</span>
					<input placeholder="Please enter your password" name="password" pattern=".{6,}" type="password" tabindex="2" title="It must contain the password that you have chosen at registration" required>
				</label>
			</li>
			<!--这里放置验证码start-->
			<li>
				<label>
					<img id="code" src="/homework/code.jhtml" width="120px" height="40px" onclick="refresh()">
					看不清？点击图片换一张
					<input placeholder="Please enter this code" name="code" type="text" tabindex="3">
				</label>
			</li>
			<!--这里放置验证码end-->
			<li>
				<h5>${requestScope.errory}</h5>
				<button name="sign-in-submit" type="submit" id="sign-in-submit">Sign In</button>
			</li>
		
			<div style="clear: both;"></div>
			</form><!-- END OF SIGN IN FORM -->
		</ul><!-- END OF FORM SECTION -->
	</div><!-- END OF WRAPPER DIV -->

</body>
</html>