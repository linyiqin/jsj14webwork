<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="css/admin.css" rel="stylesheet" type="text/css" />
		<link href="css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/hmstyle.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>
	</head>
	<body>
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
						<%
							 String flagName = (String)session.getAttribute("data");
                             if(flagName=="" || flagName==null)
                            {
						%>
						<a href="login.jsp" target="_top" class="h">亲，请登录</a> <a
							href="zc.jsp" target="_top">免费注册</a>
						<%
							} else {
						%>
						
						<a><%= flagName %> 欢迎光临</a>
						<%
							}
						%>
					</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage">
						<div class="menu-hd">
							<a href="index.jsp" target="_top" class="h">商城首页|| </a>
							<%
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
			</div>
			<div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<li class="banner1"><a href="#"><img src="images/index/ad1.jpg" /></a></li>
								<li class="banner2"><a><img src="images/index/ad2.jpg" /></a></li>
								<li class="banner3"><a><img src="images/index/ad3.jpg" /></a></li>
								<li class="banner4"><a><img src="images/index/ad4.jpg" /></a></li>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>
			<div class="shopNav">
				<div class="slideall">

					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="index.jsp">首页</a></li>
                                <li class="qc"><a href="#">店铺</a></li>
                                <li class="qc"><a href="goods.jsp">商品</a></li>
							</ul>
						    
						</div>	
					<!--侧边导航 -->
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
													<em>&gt;</em></div>
												
											<b class="arrow"></b>	
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
													<em>&gt;</em></div>
												
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
													<em>&gt;</em></div>
												
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
													<em>&gt;</em></div>
												
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
													<em>&gt;</em></div>
												
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
													<em>&gt;</em></div>
												
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
													<em>&gt;</em></div>
												
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
													<em>&gt;</em></div>
												
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/tea.png"></i><a class="ml-22" title="花茶、果茶">花茶/果茶</a></h3>
													<em>&gt;</em></div>
												
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative last">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/index/package.png"></i><a class="ml-22" title="品牌、礼包">品牌/礼包</a></h3>
													<em>&gt;</em></div>
											</li>
										</ul>
									</div>
								</div>

							</div>
						</div>
						<!--轮播-->
						
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>


						<!--引导 -->
		<div class="navCir">
			<li class="active"><a href="index.jsp"><i class="am-icon-home "></i>首页 </a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="gwc.jsp"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
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
 	                      <span class="view "><img src="images/index/tx.png " />
								</span> </a>
								<div class="mp_tooltip ">
									个人中心 <i class="icon_arrow_right_black "></i>
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
						<a href="# ">
							<span class="view "><img src="images/index/wdzc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="images/index/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href="# ">
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
						<a href="# ">
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
						<a href="# ">
							<span class="kfzx "><img src="images/index/kf1.png " /></span>
						</a>
						<div class="mp_tooltip ">
							客服中心
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>
					<!--回到顶部 -->
						<div id="broadcast " class="item ">
							<a href="#top " ><span class="top "><img src="images/index/hdtb.png " /></span></a>
							<div class="mp_tooltip ">
							回到顶部
							<i class="icon_arrow_right_black "></i>
						   </div>
				        </div>
                </div>
			</div>
		</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="js/quick_links.js "></script>
</body>
</html>
