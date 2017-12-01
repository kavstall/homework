<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" type="pic_source/logo_2.jpeg" href="pic_source/logo_3.png" media="screen" /><!--替换网页窗口图标-->

<iframe src="main.html" height="0" width="0" marginheight="0" scrolling="no" frameborder="0" allowtransparency="true" ></iframe>

<title>ali's home</title>
<style>
h3{
text-align: center;
color: #5A5A5A;
}
	body{
		background: #000;
	}
	#box{
		width: 200px;
		height: 200px;
		margin:150px auto;
		background: #ccc;
		position: relative;
		transform:perspective(800px) rotateY(-60deg) rotateX(45deg);
		transform-style:preserve-3d;
	}
	#box div{
		width:100%;
		height:100%;
		position: absolute;
		top:0;
		left: 0;
		background-size:cover; 
		-webkit-box-shadow:0 0 100px #5fbcff;
		opacity: .8;
	}
	.front{
		transform:translateZ(100px);
		background: url(pic_source/square_1.png);
	}
	.back{
		transform:translateZ(-100px);
		background: url(pic_source/square_2.png);
	}
	.left{
		transform:translateX(-100px) rotateY(90deg);
		background: url(pic_source/square_3.png);
	}
	.right{
		transform:translateX(100px) rotateY(90deg);
		background: url(pic_source/square_4.png);
	}
	.top{
		transform:translateY(-100px) rotateX(90deg);
		background: url(pic_source/square_5.png);
	}
	.bottom{
		transform:translateY(100px) rotateX(90deg);
		background: url(pic_source/square_6.png);
	}
</style>
<script>
window.onload=function()
	{
		var oBox=document.querySelector('#box');

		var y=-60;
		var x=45;
		oBox.onmousedown=function(ev)
		{
			var oEvent=ev||event;
			var disX=oEvent.clientX-y;
			var disY=oEvent.clientY-x;
			document.onmousemove=function(ev)
			{
				var oEvent=ev||event;
				x=oEvent.clientY-disY;
				y=oEvent.clientX-disX;
				oBox.style.transform='perspective(800px) rotateX('+x+'deg) rotateY('+y+'deg)';
			};
			document.onmouseup=function()
			{
				document.onmousemove=null;
				document.onmouseup=null;
			};
			return false;
		};
	};
</script>
</head>
<body>
<!--<embed src="Equation.mp3" hidden="true" autostart="true" loop="-1">-->
<div id="box">
	<div class="front"></div>
	<div class="back"></div>
	<div class="top"></div>
	<div class="bottom"></div>
	<div class="left"></div>
	<div class="right"></div>
</div>
<div style="text-align: center; margin: 10px 0; font: normal 14px/24px 'MicroSoft YaHei'; color: #ffffff; font-size: 24px;">
  <p><a href="home.jsp"><img src="pic_source/logo_0.png" width="120" height="120"></a><a href="home.jsp">点击进入首页</a></p>
</div>
</body>
</html>
