<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="gb2312">
<title>ali's photo</title>

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
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
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
<table width="73%" border="0" align="center" class="bk_white">
  <tr>
    <td colspan="5" class="bk_red" id="bk_red"></td>
  </tr>
  <tr>
    <td width="24%"><img src="pic_source/erweima.gif" width="190" height="189" align="center"></td>
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
    <td colspan="4" rowspan="5">
    <style type="text/css">
body { background:#fff; }
ul.polaroids li { display: inline; }
ul.polaroids a {
    background: #fff;    display: inline;    float: left;
    margin: 0 0 27px 30px;    width: auto;
    padding: 10px 10px 15px;
    text-align: center;
    font-family: "Marker Felt", sans-serif;
    text-decoration: none;    color: #333;    font-size: 18px;
    -webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, .25);
    -moz-box-shadow: 0 3px 6px rgba(0, 0, 0, .25);
	-webkit-transform: rotate(-2deg);
    -webkit-transition: -webkit-transform .15s linear;
    -moz-transform: rotate(-2deg);  }
ul.polaroids img {    display: block;    height: 100px;
    margin-bottom: 12px; }
ul.polaroids a:after { content: attr(title); }
ul.polaroids li:nth-child(even) a {
    -webkit-transform: rotate(5deg);
    -moz-transform: rotate(5deg);   }
ul.polaroids li:nth-child(2n) a {
    position: relative;    top: -5px;    -webkit-transform: none;    
    -moz-transform: none;   }
ul.polaroids li:nth-child(3n) a {
    position: relative;    right: 5px;
    -webkit-transform: rotate(-10deg);    
    -moz-transform: rotate(-10deg);   }
ul.polaroids li:nth-child(4n) a {
    position: relative;    right: 5px;    top: 8px;  }
ul.polaroids li:nth-child(5n) a {
    position: relative;    left: -5px;    top: 3px;  }
	ul.polaroids li a:hover {
    -webkit-transform: scale(2);
    -moz-transform: scale(2);
    -webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, .5);
    -moz-box-shadow: 0 3px 6px rgba(0, 0, 0, .5);
    position: relative;    z-index: 5;  }
</style> 

<body>

<ul class="polaroids">
    <li> <a href="download?filename=photo_1.jpg" title="守候梦想"> <img src="pic_source/photo_1.jpg" alt="相识" />  </a> </li>
    <li> <a href="download?filename=photo_2.jpg" title="勇气"> <img src="pic_source/photo_2.jpg" alt="凝视" /> </a> </li>
    <li> <a href="download?filename=photo_3.jpg" title="爱"> <img src="pic_source/photo_3.jpg" alt="甜睡" /> </a> </li>
    <li> <a href="download?filename=photo_4.jpg" title="孤单"> <img src="pic_source/photo_4.jpg" alt="逗乐" /> </a> </li>
    <li> <a href="download?filename=photo_5.jpg" title="酝酿"> <img src="pic_source/photo_5.jpg" alt="奔跑" /> </a> </li>
    <li> <a href="download?filename=photo_6.jpg" title="箱子"> <img src="pic_source/photo_6.jpg" alt="漠视" /> </a> </li>
    <li> <a href="download?filename=photo_7.jpg" title="晚安"> <img src="pic_source/photo_7.jpg" alt="险峰" /> </a> </li>
    <li> <a href="download?filename=photo_8.jpg" title="土豆豆蛋士大奖"> <img src="pic_source/photo_8.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_9.jpg" title="童话图书馆"> <img src="pic_source/photo_9.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_10.jpg" title="擅长"> <img src="pic_source/photo_10.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_11.jpg" title="茄子"> <img src="pic_source/photo_11.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_12.jpg" title="你"> <img src="pic_source/photo_12.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_13.jpg" title="生日快乐"> <img src="pic_source/photo_13.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_14.jpg" title="好朋友"> <img src="pic_source/photo_14.jpg" alt="胜景" /> </a> </li>
    <li> <a href="download?filename=photo_15.jpg" title="摩天轮"> <img src="pic_source/photo_15.jpg" alt="胜景" /> </a> </li>
</ul>
 </form>
</body> 
</html>
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
    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('象扑君','','pic_source/decoration_4-.png',1)"><img src="pic_source/decoration_4.png" width="105" height="110" id="象扑君"></a></td>
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
    <td width="21%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
    <td width="19%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
