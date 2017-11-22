<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>header</title>
	<link rel="stylesheet" type="text/css" href="css/header_base.css" media="all" />
</head>
<style type="text/css">
    a {
        text-decoration:none !important;
        outline:none !important;
    }
    .main-menu {
        margin:0px 0;
        padding:0px 0 0 0;
        position:fixed;
        left: 50%;
        float:left;
		width:100%;
		z-index: 9999;
    }
    /*顶部商标部分*/

    .brand {
        position: absolute;
        top: 0;
        left: -50%;                      
        text-align:center;
        box-sizing:border-box;
        width:100%;
        height:50px;
        line-height: 50px;
        border:1px solid rgb(25,25,25);
        border-radius:4px 4px 0 0;
        background:-webkit-linear-gradient(top,rgb(49,50,52),rgb(12,13,14));
        background:-moz-linear-gradient(top,rgb(49,50,52),rgb(12,13,14));
        background:-ms-linear-gradient(top,rgb(49,50,52),rgb(12,13,14));
        background:linear-gradient(top,rgb(49,50,52),rgb(12,13,14));
        box-shadow:inset 0 1px 0 rgb(62,63,65),inset 1px 0 0 rgba(75,75,80,0.4);
    }
    .brand .btn-group {position:absolute;top:0;left:8px;}
    .brand .search-field {position:absolute;top:0;right:20px;}
    /*brand区域登陆和注册按钮制作*/
    .brand button {
        height:27px;
        padding:0 15px;
        line-height:25px;
        border:1px solid rgb(15,15,15);
        background:-webkit-linear-gradient(top,rgb(67,68,68),rgb(41,42,43) 50%,rgb(15,16,17));
        background:-moz-linear-gradient(top,rgb(67,68,68),rgb(41,42,43) 50%,rgb(15,16,17));
        background:-ms-linear-gradient(top,rgb(67,68,68),rgb(41,42,43) 50%,rgb(15,16,17));
        background:linear-gradient(top,rgb(67,68,68),rgb(41,42,43) 50%,rgb(15,16,17));
        color:rgb(200,200,200);
        box-shadow:inset 0 1px 0 rgb(77,77,78),0 1px 0 rgb(42,43,44);
        font-weight:500;
        text-shadow:1px 1px 0 rgb(15,15,16);
        -webkit-transition: color 300ms ease;
        -moz-transition: color 300ms ease;
        transition: color 300ms ease;
    }
    .brand .sign-in {border-radius:14px 0 0 14px; border-right:0 none;}
    .brand .register {border-radius:0 14px 14px 0;margin-left: -3px;}
    /*brand区域logo*/
    .brand .logo {
        color:rgb(255,255,255);
        font-size:25px;
        font-weight:bolder;
        text-shadow:0 -1px 0 rgb(111,111,111), 0 -2px 0 rgb(32,33,34);
    }
    /*按钮的悬浮和激活效果*/
    .brand button:hover {color:rgb(255,255,255);}
    .brand button:active {background:-*-linear-gradient(top,rgb(15,16,17),rgb(41,42,43) 50%,rgb(67,68,68));}
    .brand .search-icon:hover {color:rgb(255,255,255);}
    
   
   
    /*图标*/
    @font-face {
      font-family: 'icon-search';
      src: url("font/icon-search.eot");
      src: url("font/icon-search.eot?#iefix") format('embedded-opentype'),
           url("font/icon-search.woff") format('woff'),
           url("font/icon-search.ttf") format('truetype'),
           url("font/icon-search.svg#icon-search") format('svg');
      font-weight: normal;
      font-style: normal;
    }
</style>
<body>

<div class="main-menu">
	<div class="brand">
		<div class="btn-group">
			<button type="button" class="sign-in" onclick="window.location.href=('login.jsp')">Sign in</button>
            <button type="button" class="register" onclick="window.location.href=('register.jsp')">Register</button>
		</div>
		<a href="#" class="logo">电商购物</a>
	</div>
</div>

</body>
</html>