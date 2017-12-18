<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="gb2312">
<title>ali's storybook</title>

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
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
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
</script>
<script type="text/javascript">
window.onload = function(){
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
</script>
</head>

<body>
<table width="79%" border="0" align="center" class="bk_white">
  <tr>
    <td colspan="5" class="bk_red" id="bk_red"></td>
  </tr>
  <tr>
    <td width="22%"><img src="pic_source/erweima.gif" width="190" height="189" align="center"></td>
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
          <li><a href="home.jsp">网站首页</a></li>
          <li><a href="show.jhtml">最新消息</a></li>
          <li><a href="storybook.jsp">童话绘本</a></li>
          <li><a href="https://ali.tmall.com/" target="_blank">周边商城</a></li>
          <li><a href="photo.jsp">素材下载</a></li>
          <li><a href="video.jsp">加入我们</a></li>
          <li><a href="upload.jsp">上传材料</a></li>
        </ul>
      </div>
    <div style="text-align:center;clear:both"></div></td>
  </tr>
  <tr>
    <td><img src="pic_source/logo_0.png" width="180" height="180" align="top"></td>
    <td colspan="2"><img src="pic_source/book_2.jpg" width="300" height="200"></td>
    <td>作者： HANS<br>
      出版社： 北方妇女儿童出版社<br>
    出版时间： 2010-12&nbsp;</td>
    <td><a href="https://ali.tmall.com/" target="_blank"><img src="pic_source/button_3.gif" width="87" height="29"></a></td>
  </tr>
  <tr>
    <td height="110"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('阿狸','','pic_source/decoration_1-.png',1)"><img src="pic_source/decoration_1.png" width="105" height="110" id="阿狸"></a></td>
    <td colspan="4" rowspan="6" class="ziti5_brown">《阿狸&middot;永远站》是阿狸之父Hans历时一年精心策划、纯手工绘制的首部长篇童话绘本。一个下雪的清晨，阿狸登上了一辆没有终点站的巴士车，开始了他寻找永远的旅程。在旅程中，阿狸听到每个人对永远的理解，答案却都不同。可是永远到底是在哪里呢？
      <p class="ziti5_brown">&nbsp;</p>
      <p align="left">文摘：</p>
      <p align="left">永远有多远？比时间多一秒就是永远。</p>
      <p align="left">世界有多大？你走到哪里，世界就有多大。      </p>
      <p class="ziti5_brown"><img src="pic_source/book_21.jpg" width="592" height="381"></p>
      <p align="left">我们的一生会遇到八百二十六万三千五百六十三人，</p>
      <p align="left">会打招呼的是三万九千七百七十八人，</p>
      <p align="left">会和三千六百一十九人熟悉，</p>
      <p align="left">会和两百七十五人亲近。</p>
      <p align="left">但最终，都会失散在人海。    </p>
      <p><img src="pic_source/book_22.jpg" width="573" height="409"></p>
      <p align="left">阿狸经常在看着桃子的时候，心里仍然还在想念着桃子。</p>
      <p align="left">也许这就是爱情吧。    </p>
    <p><img src="pic_source/book_23.jpg" width="457" height="296"></p></td>
  </tr>
  <tr>
    <td height="47"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('小黑','','pic_source/decoration_2-.png',1)"><img src="pic_source/decoration_2.png" width="105" height="110" id="小黑"></a></td>
  </tr>
  <tr>
    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('皮揣子','','pic_source/decoration_3-.png',1)"><img src="pic_source/decoration_3.png" width="105" height="110" id="皮揣子"></a></td>
  </tr>
  <tr>
    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('象扑君','','pic_source/decoration_4-.png',1)"><img src="pic_source/decoration_4.png" width="105" height="110" id="象扑君"></a></td>
  </tr>
  <tr>
    <td class="bk_white">&nbsp;</td>
  </tr>
  <tr>
    <td height="1013" class="bk_white">&nbsp;</td>
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
    <td width="4%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
    <td width="25%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
