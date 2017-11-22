<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册</title>

	<link rel="stylesheet" type="text/css" href="css/login_style.css" media="screen, projection">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	var code = "";
	var phone = "";
	//1.获取	输入框的值，以id命名采用#号
	$("#sendCodeBtn").click(function(){
			phone = $("#telephone").val();
			//利用ajax把手机号传入后台
			$.ajax({
				url: "sendSMS",
				type: "POST",
				//发送参数
				data: {"phone":phone},
				//返回结果
				success: function(result){
					//控制台打印结果
					//console.log("验证码是"+result);
					code = result;
				}
			});
		});
	$("#login").click(function(){
		//验证验证码
		var sms = $("#sms").val();
		if(sms==""){
			alert("验证码未填写！");
		}else{
			if(code==sms){
				alert("登录成功");
			}else{
				alert("验证码错误");
			}
		}
		
		
	});
	</script>
</head>
<body>
	<header>
		<h1>欢迎免费注册</h1>
	</header>
	<!-- BEGIN WRAPPER DIV -->
	<div id="wrapper">
		<!-- BEGIN FORM SECTION -->
		<ul id="form-section">
			<!-- BEGIN SIGN IN FORM -->
			<form class="sign-in-form" action="/homework/register.jhtml" method="post">
			<p><span class="register-numbering-text">Basic information</span></p>
			<li>
				<label>
					<span>Username*</span>
					<input type="text" name="username" tabindex="4" pattern="[a-zA-Z0-9]{6,}"  placeholder="Please enter your username" title="It must contain alphanumeric characters and a length of minimum 6 characters !" required>
				</label>
			</li>
			<li>
				<label>
					<span>Password*</span>
					<input type="password" name="password" tabindex="5" pattern=".{6,}"  placeholder="Please enter your password" title="It can contain all types of characters and a length of minimum 6 characters!" required>
				</label>
			</li>
			<li>
				<label>
					<span>Telephone*</span>
					<input type="tel" name="telephone" pattern="[0-9]{11,11}" tabindex="6" placeholder="Please enter your phone number" title="It must contain a valid phone number formed only by numerical values and a length  11 characters !" required>
				</label>
			</li>
			<!-- 短信验证码 start -->
			<li>
				<label>
					<span>Telephone code*</span>
					<input type="tel" name="telephoneCode" id="telephoneCode" placeholder="Please enter your telephone Code">
				</label>
			</li>
			<!-- 短信验证码 end -->
			<li>
				<h5>${requestScope.errory}</h5>
				<button name="sendCodeBtn" tabindex="7" type="button" id="sendCodeBtn">Click This Send Telephone Code</button>
				<button name="sign-in-submit" type="submit" id="sign-in-submit">Register</button>
			</li>
		
			<div style="clear: both;"></div>
			</form><!-- END OF SIGN IN FORM -->
		</ul><!-- END OF FORM SECTION -->
	</div><!-- END OF WRAPPER DIV -->

</body>
</html>