<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>商品页面</title>
		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="/css/admin.css" rel="stylesheet" type="text/css" />
		<link href="css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/seastyle.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div class="top1">
		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="menu-hd">
							<a href="index.jsp" target="_top" class="h">商城首页|| </a>
							<%
							String flagName = (String) session.getAttribute("data");
                             if(flagName=="" || flagName==null)
                            {
						%>
						    <a href="login.jsp" target="_top">个人中心|| </a>
							<a href="login.jsp" target="_top" class="h">购物车|| </a>
						<%
							} else {
						%>
							<a href="grzx.jsp" target="_top">个人中心|| </a>
							<a href="gwc.jsp" target="_top" class="h">购物车|| </a>
							<%
							}
						%>
							<a href=".jsp" target="_top">收藏夹</a>
						</div>
			</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">
					<div class="logoBig">
						<li><img src="images/logo.jpg" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form action="./SearchGoodServlet">
							<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

			<div class="clear"></div>
			<b class="line"></b>
           <div class="search">
			<div class="search-list">
			<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
								<ul>
								<li class="index"><a href="index.jsp">首页</a></li>
                                <li class="qc"><a href="">店铺</a></li>
                                <li class="qc"><a href="goods.jsp">商品</a></li>
								</ul>
						    <div class="nav-extra">
						    </div>
						</div>
			</div>
					<div class="am-g am-g-fixed">
						<div class="am-u-sm-12 am-u-md-12">
							<div class="search-content">
								<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
		<c:forEach items="${goods }" var="b">
									<li>
										<div class="i-pic limit">
											<img src="images/good2.jpg" />											
											<p class="title fl">${b.goods_name }</p>
											<p class="price fl">
												<b>¥</b>
												<strong>${b.good_price }</strong>
											</p>
											<p class="number fl">
											<%
								if (flagName == "" || flagName == null) {
							%>
							<a href="login.jsp">加入购物车</a> <a href="login.jsp">购买</a> 
 	                        <%   } else {
                             %> <a href="./AddShopcartServlet?goods_id=${b.goods_id }">加入购物车</a>
												<a href="zjbuy.jsp?goods_id=${b.goods_id }">购买</a> 
                            <% } %>
												
											</p>
											</p>
										</div>
									</li>
		</c:forEach>
								</ul>
							</div>
							<div class="search-side">

								<div class="side-title">
									推荐商品
								</div>

								<li>
									<div class="i-pic check">
										<img src="images/good1.jpg" />
										<p class="check-title">萨拉米 1+1小鸡腿</p>
										<p class="price fl">
											<b>¥</b>
											<strong>29.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>
								<li>
									<div class="i-pic check">
										<img src="images/good1.jpg" />
										<p class="check-title">ZEK 原味海苔</p>
										<p class="price fl">
											<b>¥</b>
											<strong>8.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>
								<li>
									<div class="i-pic check">
										<img src="images/good1.jpg" />
										<p class="check-title">萨拉米 1+1小鸡腿</p>
										<p class="price fl">
											<b>¥</b>
											<strong>29.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>

							</div>
							
							<div class="clear"></div>
							<!--分页 -->
							<ul class="am-pagination am-pagination-right">
								<li class="am-disabled"><a href="#">&laquo;</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>

						</div>
					</div>
				</div>

			</div>

		<!--引导 -->
		<div class="navCir">
			<li><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>

		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="asset" class="item ">
						<%
								if (flagName == "" || flagName == null) {
							%>
							<a href="login.jsp "> 
 	                        <%   } else {
                             %> <a href="grzx.jsp "> 
                            <% } %>
							<span class="view "><img src="images/index/tx.png " /></span>
						</a>
						<div class="mp_tooltip ">
							个人中心
							<i class="icon_arrow_right_black "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<%
								if (flagName == "" || flagName == null) {
							%>
							<a href="login.jsp "> 
 	                        <%   } else {
                             %> <a href="gwc.jsp "> 
                            <% } %>
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					<div id="asset " class="item ">
						<a href=" ">
							<span class="view "><img src="images/index/wdzc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
					<div id="brand " class="item ">
						<a href="">
							<span class="wdsc "><img src="images/index/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href=" ">
							<span class="chongzhi "><img src="images/index/chongzhi.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我要充值
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
					<br><br><br>
					<!--二维码 -->
					<div id="prof" class="item ">
						<a href=" ">
							<span class="setting "><img src="images/index/ewm.png " /></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<img src="images/taobao.png " />
							<i class="icon_arrow_white "></i>
							</div>
						</div>
					</div>
					 <div id="broadcast " class="item ">
						<a href=" ">
							<span class="kfzx "><img src="images/index/kf1.png " /></span>
						</a>
						<div class="mp_tooltip ">
							客服中心
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
					<!--回到顶部 -->
					 <div id="broadcast " class="item ">
						<a href="searchgood.jsp">
							<span class="kfzx "><img src="images/index/hdtb.png " /></span>
						</a>
						<div class="mp_tooltip ">
							回到顶部
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
			</div>
			</div>
		<script>
			window.jQuery || document.write('<script src="js/jquery-1.9.min.js"><\/script>');
		</script>
		<script type="text/javascript" src="js/quick_links.js"></script>

<div class="theme-popover-mask"></div>

	</body>

</html>
