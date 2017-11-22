<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电商购物平台</title>

<style type="text/css">
*{margin:0 0;}
body{background:url(images/65.jpg) no-repeat fixed center center;}
form,ul,li,ol,dl,dt,dd,p,i,h1,h2,h3,h4,h5,h6{ margin:0; padding:0}
ul,li{ list-style:none}  img{ border:0}  .dp{ display:block}
.tc{ text-align:center}  .fl{ float:left} .fr{ float:right}
.clear{clear:both;}   .clearfix:after{content:"."; display:block; visibility:hidden; height:0; clear:both}
.main-page{margin:0 auto;width:1200px}
.main-page .left{ padding-right: 25px; border-right: 1px #fff solid; margin-top:280px}
.main-page .left, .main-page .right{float:left;}
.main-page .nav-back{height:300px;}
.main-page .nav{position:relative;margin-top:-300px;width:132px;text-align:center;font-size:18px;font-family:"微软雅黑";color:#fff;}
.main-page .nav div{height:47px;line-height:47px; margin-bottom: 8px; border-radius: 2px; cursor: pointer;}
.main-page .nav div.on{background:#3091f2; }
.main-page .right{width:987px;height:800px;margin-left:55px;}
.main-page .content{position:relative; width:987px; height:800px; overflow:hidden;}
.main-page .content .con-ggh{ width:987px; height:800px;}

.con-ggh ul{ padding-top:20px; display:block} 
.con-ggh ul li{ padding-top:20px; margin-right:20px; float:left}
.list-pic{ background-color: rgba(255,255,255,0.3); padding: 19px; width: 110px; height: 110px; border: 1px solid #b9babe;}
.list-pic img{ width:110px; height:110px; display:block}
.con-ggh .item-name{ padding:20px 0; height: 20px; width: 150px; font-size: 16px; text-align: center; color: #fff; line-height: 20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}
.b-intro{ margin-top:20px}
.b-intro span{ font-size:24px; margin-bottom:12px; color:#fff}
.b-intro p{ width:545px; height:45px; line-height:24px; overflow:hidden; color:#fff; font-size:14px}
.ck-m{ width:123px; height:36px; line-height:36px; border:1px #fff solid; margin-top:25px}
.zcinfo{ width:550px; margin-top:280px} 
.ptpic-dl,.ptpic-dl img{ width:354px; height:690px}
.ptpic-dl{ margin-top:110px}
</style>

</head>
<body>
<%@ include file="header.jsp" %>
<div class="main-page">
	<div class="left">
		<div class="nav-back"></div>
		<div class="nav">
			<div class="on">餐饮</div>
			<div>电商</div>
			<div>旅游</div>
			<div>汽车</div>
			<div>美容</div>
			<div>新闻</div>
			<div>家居</div>
			<div>健康</div>
		</div>
	</div>
	<div class="right">
		<div class="content">
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
			</div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
            <div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
			<div class="con-ggh">
                 <div class="zcinfo fl">
				 <ul class="clearfix">
				 	<li>
				 		<div class="list-pic"><img alt="" src="images/214a.png" /></div>
                        <p class="item-name">快乐美食</p>
				 	</li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/214.jpg" /></div>
                        <p class="item-name">艺术蛋糕小店</p>
                    </li>
				 	<li>
                        <div class="list-pic"><img alt="" src="images/42f.jpg" /></div>
                        <p class="item-name">美味餐厅</p>
                    </li>
				 </ul>
                 <div class="b-intro">
                      <span class="dp">解决案例介绍</span>
                      <p>为餐饮行业提供一站式解决方案，凭借到店、预约、点餐等功能，以及积分系统搭建、可视化后台数据管理等强大的技术支持。拓展店铺营销的新渠道。</p>
                      <a href="#" class="ck-m bs tc dp">查看更多</a>
                 </div>
                 </div>
                 <div class="ptpic-dl fr"><img alt="" src="images/sj-pic-pt.png" /></div>
            </div>
		</div>
	</div>
	<div class="clear"></div>
</div>

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(".main-page .nav div").mouseenter(function () {
	var $this = $(this);
	var index = $this.index();
}).mouseleave(function () {
	var $this = $(this);
	var index = $this.index();
}).click(function () {
	var $this = $(this);
	var index = $this.index();
	var l = -(index * 800);
	$(".main-page .nav div").removeClass("on");
	$(".main-page .nav div").eq(index).addClass("on");
	$(".main-page .content .con-ggh:eq(0)").stop().animate({ "margin-top": l }, 500);
});
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">
<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</p>
<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>
</body>
</html>