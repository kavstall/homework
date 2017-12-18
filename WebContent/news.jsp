<%@ page import="com.sbs.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ali's news</title>


<link rel="shortcut icon" type="pic_source/logo_2.jpeg" href="pic_source/logo_3.png" media="screen" /><!--替换网页窗口图标-->

<link href="Typeface/bk.css" rel="stylesheet" type="text/css"><link href="Typeface/ziti1.css" rel="stylesheet" type="text/css"><link href="Typeface/button.css" rel="stylesheet" type="text/css"><link href="css/style.css" type="text/css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/style_lunbo.css">
<style type="text/css">
a:link {
	color: #FFFFFF;
}
a:visited {
	color: #FFFFFF;
}
body,td,th {
	font-size: 20px;
}
<!-- 新添部分 -->

.input2 {
    width: 150px;
    height: 25px;
    margin-top: 3px;
    margin-bottom: 3px;
}
.submit1 {
    width: 50px;
    border: #CCCCCC solid 1px;
    height: 30px;
    background: #FFFFFF
}
#form1 tr th {
    text-align: right;
}
input {
    text-align: left;
}
body {
    font-family: "微软雅黑", Verdana, sans-serif, "宋体";
    color: #333;
}
.mybutton {
    width: 90px;
    height: 25px;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
}

<!-- 新添部分 -->
</style>

<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

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
    <td colspan="4" rowspan="5" class="bk_biankuang1">
<!-- 留言板展示功能区 -->
	
	<br>
	<p style="font-size:48px;text-align:center">留言板</p><br><hr><br>
	<div style="font-size:18px;color:#000000;margin:20px">
	
	<form name="form2" id="form2" action="/homework/show.jhtml" method="post">
		<input name="action" type="hidden" id="show" value="show">
	
	<c:forEach items="${list}" var="msg" begin="${showPage1}" end="${showPage2}">
	<table>
		<tr>
			<td>作者：${msg.username}</td>
		</tr>
		<tr>
			<td>发表时间：${msg.time}</td>
		</tr>
		<tr>
			<td align="left">发表内容：${msg.message}<br><br></td>
		</tr>
	</table>
	</c:forEach>
	<!-- 
	<input type="submit" name="btn1" onclick="shang()" value="上一页" class="mybutton">
	<input type="submit" name="btn2" onclick="xia()" value="下一页" class="mybutton">
	
	<button onclick="shang()" class="mybutton">上一页</button>
	<button onclick="xia()" class="mybutton">下一页</button>
	 -->
	<br>
	<table>
	<tr>
	<td>
	当前为第&nbsp;${showPage}&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;
	共&nbsp;${pageCount}&nbsp;页
	</td>
	</tr>
	<br>
	<tr>
	<td>
	跳转到第<input type="text" name="ShowPage" size="2" onkeyup="value=value.replace(/[^\d]/g,'')"/>页
	<input type="submit" name="ShowPage" id="ShowPage" value="跳转" class="mybutton">
	<td>
	</tr>
	</table>
	</form>
	
	</div>
	<!-- 留言板展示功能区 -->
	
	<!-- 留言板留言功能区 -->
	<br><hr><br>
	<div style="font-size:18px;color:#000000;margin:20px">
	<table width="400" align="center" cellpadding="2"
            cellspacing="0">

  <form name="form1" id="form1" action="/homework/write.jhtml" method="post">
    <tr>
      <td width="280" align="left">用户名：<br>
      <input name="username" type="text" class="input2" id="name"></td>
    </tr>
    <tr>
      <td><br>留言板:<br>
      <textarea name="message" id="content" cols="60" rows="5"></textarea></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="submit" id="submit" value="提交留言" class="mybutton">
        &nbsp;
        
        &nbsp;
        <input type="reset" name="reset" id="reset" value="重新填写" class="mybutton">
        <input name="action" type="hidden" id="check" value="add"></td>
    </tr>
  </form>
</table>
</div>
	
	<!-- 留言板留言功能区 -->
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
    <td width="19%">&nbsp;</td>
    <td width="18%">&nbsp;</td>
    <td width="20%">&nbsp;</td>
    <td width="21%">&nbsp;</td>
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
