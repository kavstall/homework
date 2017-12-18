<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">

<link rel="shortcut icon" type="pic_source/logo_2.jpeg" href="pic_source/logo_3.png" media="screen" /><!--替换网页窗口图标-->

<title>ali's login</title>
<style type="text/css">
	@import url("Typeface/button.css");
	@import url("Typeface/ziti1.css");
	@import url("Typeface/bk.css");
	a:link {
		color: #FFF;
		text-decoration: none;
	}
	a:visited {
		color: #FFF;
		text-decoration: none;
	}
	a:hover {
		color: #FFF;
		text-decoration: underline;
	}
	a:active {
		text-decoration: none;
	}
	.zt {
		text-size:28px;
		text-align:center;
	}
	img.lg{
	float:left;
	}
	.mybutton {
    width: 80px;
    height: 25px;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
	}
</style>

<script type="text/javascript">
		//实现加载完成验证码自动刷新一次
		window.onload = function(){
			refresh();
			<%
			Boolean result = false;
			String username = "";
			if(session.getAttribute("username")!=null && !"".equals(session.getAttribute("username"))){
				username = session.getAttribute("username").toString();
				result =true;
			}
			%>
			var result = "<%=result %>";
			var html ="<a href='register.jsp'>注册</a>&nbsp; &nbsp;&nbsp;<a href='login.jsp'>登录</a>&nbsp; &nbsp;&nbsp;";
	
			if(result=="true"){
				html = "欢迎 &nbsp; &nbsp;"+"<%=username %>"+"&nbsp; &nbsp;用户"+"&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a href='logout?v=11'>注销</a>";
			}
			$("#bk_red").html(html);

		}
		//实现点击验证码图片，自动刷新
		function refresh(){
			var src = document.getElementById("code").src+"?time="+ new Date().getMilliseconds();
			document.getElementById('code').src=src;
		}
		
	</script>
</head>

<body class="zt">
<table width="50%" border="0" align="center">
  <tr>
  	<td colspan="5" class="bk_red" id="bk_red">
  </tr>
  <tr>
    <td><img class="lg" src="pic_source/logo_0.png" width="150" height="150"></td>
  </tr>
  <tr>
    <td height="115">
    <form action="/homework/login.jhtml" method="post">
      <p class="zt">用户名：
        <label for="username"></label>
        <input name="username" type="text" id="username" size=20>
      </p>
      <p class="zt">密&nbsp;&nbsp; 码：
        <label for="password"></label>
        <input name="password" type="password" id="password" size=20>
    </p>
    <!-- 验证码 -->
    <p class="zt">验证码：
        <img id="code" src="/homework/code.jhtml" width="120px" height="40px" onclick="refresh()">
					看不清？点击图片换一张
	 </p>
	<p class="zt">	
		<input placeholder="Please enter this code" name="code" type="text" tabindex="3">
    </p>
    <!-- 验证码 -->
    <p class="zt">
      	<!-- EL 表达式,返回错误信息 -->	
       	<h5>${requestScope.error}</h5><br>
		<button type="submit" class="mybutton">登录</button>
    </p>
    </form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="23" class="bk_red">&nbsp;</td>
  </tr>
</table>
</body>
</html>
