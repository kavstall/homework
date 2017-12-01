<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<title>ali's register</title>

<link rel="shortcut icon" type="pic_source/logo_2.jpeg" href="pic_source/logo_3.png" media="screen" /><!--替换网页窗口图标-->

<link href="Typeface/bk.css" rel="stylesheet" type="text/css"><link href="Typeface/ziti1.css" rel="stylesheet" type="text/css"><link href="Typeface/button.css" rel="stylesheet" type="text/css"><link href="css/style.css" type="text/css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/style_lunbo.css">
<style type="text/css">
a:link {
	color: #FFFFFF;
}
a:visited {
	color: #FFFFFF;
}
</style>
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationConfirm.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationConfirm.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
</script>

	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		var code = "";
		var phone = "";
		function sendCode(){
			//1.获取	输入框的值，以id命名采用#号
			phone = $("#phone").val();
			if(phone==null){
				alert("请输入手机号，并点击发送验证码");
				return;
			}
			//利用ajax把手机号传入后台
			$.ajax({
				url: "sendSMS",
				type: "POST",
				//发送参数
				data: {"phone":phone},
				//返回结果
				success: function(result){
					code = result;
				}
			});
		}
		//判断是否注册成功
		window.onload=function (){
			var message = "${requestScope.message}";
			if(message=="注册成功"){
				alert("注册成功");
				window.location="login.jsp";
			}
			
		}
	</script>
</head>

<body>
<table width="75%" border="0" align="center" class="bk_white">
  <tr>
    <td colspan="5" class="bk_red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.html">注册</a>&nbsp; &nbsp;&nbsp;<a href="login.html">登录</a>&nbsp; &nbsp;&nbsp;<a href="http://fans.a-li.com.cn/" target="_blank">论坛</a>&nbsp; &nbsp;&nbsp;<a href="http://m.idreamcastle.com/" target="_blank">会员</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</td>
  </tr>
  <tr>
    <td width="188"><img src="pic_source/erweima.gif" width="190" height="189" align="center"></td>
    <td colspan="4"><img src="pic_source/logo_1.png" width="400" height="230" align="center"></td>
  </tr>
  <tr>
    <td height="54" class="ziti1 button1">扫我！ 加入我们！</td>
    <td colspan="4">
      <!--演示内容开始-->
      <style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "宋体";background:#EEE;}
.demo{width:750px;margin:50px auto;padding:0 20px 20px 20px;background:#FFF;border:1px solid #CCC;}
.demo h2{font-size:14px;height:30px;margin:20px 0 0 0;}
/* menu */
.menu{height:45px;overflow:hidden;}
.menu ul li{float:left;position:relative;text-align:center;line-height:45px;height:45px;overflow:hidden;}
.menu ul li a{position:relative;/* 必要元素 */display:block;width:110px;height:45px;font-size:12px;font-weight:bold;text-decoration:none;cursor:pointer;}
.menu ul li a span{position:absolute;/* 必要元素 */left:0;width:110px;}
.menu ul li a span.out{top:0px;}
.menu ul li a span.over,.menu ul li a span.bg{top:-45px;}
/* 实例一 */
#menu{background:#F00;}
#menu ul li a{color:#FFF;}
#menu ul li a span.over{color:#FFF;}
#menu ul li span.bg{height:45px;background:url('pic_source/button2.png') center center no-repeat;}
</style>
    <script type="text/javascript">
	$(document).ready(function(){
		//实例一
		$("#menu li a").wrapInner('<span class="out"></span>' ).append('<span class="bg"></span>');
		$("#menu li a").each(function(){
		$('<span class="over">' +  $(this).text() + '</span>').appendTo(this);
	});

	$("#menu li a").hover(function(){
		$(".out",this).stop().animate({'top':'45px'},250);
		$(".over",this).stop().animate({'top':'0px'},250);
		$(".bg",this).stop().animate({'top':'0px'},120);
	},function(){
		$(".out",this).stop().animate({'top':'0px'},250);
		$(".over",this).stop().animate({'top':'-45px'},250);
		$(".bg",this).stop().animate({'top':'-45px'},120);
	});

});
</script>
      <div id="menu" class="menu">
        <ul>
          <li><a href="home.html">网站首页</a></li>
          <li><a href="news.jsp">最新消息</a></li>
          <li><a href="storybook.html">童话绘本</a></li>
          <li><a href="https://ali.tmall.com/" target="_blank">周边商城</a></li>
          <li><a href="photo.html">素材下载</a></li>
          <li><a href="video.html">加入我们</a></li>
          <li><a href="connect.html">联系我们</a></li>
        </ul>
      </div>
    <div style="text-align:center;clear:both"></div></td>
  </tr>
  <tr>
    <td><img src="pic_source/logo_0.png" width="180" height="180" align="top"></td>
    <td colspan="4" rowspan="5">
    	<form name="form1" method="post" action="/homework/register.jhtml">
     		用户名：<input type="text" name="username"><br>
     		密码：<input type="password" name="password"><br>
     		手机号：<input type="text" id="phone" name="phone" pattern="[0-9]{11,11}" placeholder="Please enter your phone number" title="It must contain a valid phone number formed only by numerical values and a length  11 characters !" required><br>
     		短信验证码：<input type="text" name="code"><input id="sendCodeBtn" type="button" value="发送验证码" onclick="sendCode()"><br>
     		<input type="submit" value="注册">
      	</form>
   	</td>
  </tr>
  <tr>
    <td height="77"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('阿狸','','pic_source/decoration_1-.png',1)"><img src="pic_source/decoration_1.png" width="105" height="110" id="阿狸"></a></td>
  </tr>
  <tr>
    <td height="47"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('小黑','','pic_source/decoration_2-.png',1)"><img src="pic_source/decoration_2.png" width="105" height="110" id="小黑"></a></td>
  </tr>
  <tr>
    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('皮揣子','','pic_source/decoration_3-.png',1)"><img src="pic_source/decoration_3.png" width="105" height="110" id="皮揣子"></a></td>
  </tr>
  <tr>
    <td height="182"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('象扑君','','pic_source/decoration_4-.png',1)"><img src="pic_source/decoration_4.png" width="105" height="110" id="象扑君"></a></td>
  </tr>
  <tr>
    <td colspan="5" class="bk_red">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5" class="bk_red"><p>
    <a href="http://www.a-li.com.cn/portal.php?mod=view&aid=3837" target="_blank">梦之城人物 </a>|
    <a href="http://www.a-li.com.cn/portal.php?mod=view&aid=3838" target="_blank"> 梦之城理念 </a>|
    <a href="http://www.a-li.com.cn/portal.php?mod=view&aid=3839" target="_blank"> 正版商铺 </a>|
    <a href="http://www.a-li.com.cn/portal.php?mod=view&aid=3627" target="_blank"> 梦之城 </a>|
    <a href="http://www.a-li.com.cn/zxns/" target="_blank"> 招贤纳士 </a>|
    <a href="http://www.a-li.com.cn/portal.php?mod=view&aid=4141" target="_blank"> 版权声明 </a>|
    <a href="http://www.a-li.com.cn/jiazhang/" target="_blank"> 家长监护</a></p>
    <p>联系我&nbsp; &nbsp; Tel：18321140820&nbsp; &nbsp;Email：<a href="mailto:546096964@qq.com" target="_blank">546096964@qq.com</a></p>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td height="28">&nbsp;</td>
    <td width="211">&nbsp;</td>
    <td width="132">&nbsp;</td>
    <td width="137">&nbsp;</td>
    <td width="132">&nbsp;</td>
  </tr>
  <tr>
    <td height="28">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
