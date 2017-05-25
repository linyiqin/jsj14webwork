<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人中心</title>

		<link href="css/admin.css" rel="stylesheet" type="text/css">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/systyle.css" rel="stylesheet" type="text/css">

	</head>
<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage">
						<div class="menu-hd">
							<a href="index.jsp" target="_top" class="h">商城首页|| </a>
							<a href="grzx.jsp" target="_top">个人中心|| </a>
							<a href="gwc.jsp" target="_top" class="h">购物车|| </a>
							<a href="#" target="_top">收藏夹</a>
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
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					     <div class="nav-cont">
							<ul>
								<li class="index"><a href="index.jsp">首页</a></li>
                                <li class="qc"><a href="#">店铺</a></li>
                                <li class="qc"><a href="#">商品</a></li>
							</ul>
						</div>	
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="wrap-left">
						<div class="wrap-list">
							<div class="m-user">
								<!--个人信息 -->
								<div class="m-bg"></div>
								<div class="m-userinfo">
									<div class="m-baseinfo">
										<a >
											<img src="images/grzx/getAvatar.do.jpg">
										</a>
										<% String flagName = (String)session.getAttribute("data"); %>
										<em class="s-name"><%=flagName %><span class="vip1"></em>
										<div class="s-prestige am-btn am-round">
											</span>会员福利</div>
									</div>
									<div class="m-right">
										<div class="m-new">
											<a href=""><i class="am-icon-bell-o"></i>消息</a>
										</div>
										<div class="m-address">
											<a href="" class="i-trigger">我的收货地址</a>
										</div>
									</div>
								</div>
								</div>
							<div class="box-container-bottom"></div>
							<!--订单 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>我的订单
									<a class="i-load-more-item-shadow" href="ddym.jsp">全部订单</a>
								</div>
								<ul>
									<li><a href="order.html"><i><img src="images/grzx/pay.png"/></i><span>待付款</span></a></li>
									<li><a href="order.html"><i><img src="images/grzx/send.png"/></i><span>待发货<em class="m-num"></em></span></a></li>
									<li><a href="order.html"><i><img src="images/grzx/receive.png"/></i><span>待收货</span></a></li>
									<li><a href="order.html"><i><img src="images/grzx/comment.png"/></i><span>待评价<em class="m-num"></em></span></a></li>
									<li><a href="change.html"><i><img src="images/grzx/refund.png"/></i><span>退换货</span></a></li>
								</ul>
							</div>
							
							<!--收藏夹 -->
							<div class="you-like">
								<div class="s-bar">根据浏览，猜你喜欢
									<a class="am-badge am-badge-danger am-round">热卖</a>
									<a class="i-load-more-item-shadow" href="#"><i class="am-icon-refresh am-icon-fw"></i>换一组</a>
								</div>
								<div class="s-content">
									<div class="s-item-wrap">
										<div class="s-item">

											<div class="s-pic">
												<a href="#" class="s-pic-link">
													<img src="images/grzx/sptj1.jpg" alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" class="s-pic-img s-guess-item-img">
												</a>
											</div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">68.00</em></span>

											</div>
											<div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a></div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 98.03%</span>
												<span class="s-sales">月销: 219</span>

											</div>
										</div>
									</div>

									<div class="s-item-wrap">
										<div class="s-item">

											<div class="s-pic">
												<a href="#" class="s-pic-link">
													<img src="images/grzx/sptj2.jpg" alt="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心" title="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心" class="s-pic-img s-guess-item-img">
												</a>
											</div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">29.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">49.00</em></span>

											</div>
											<div class="s-title"><a href="#" title="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心">特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心</a></div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.74%</span>
												<span class="s-sales">月销: 69</span>

											</div>
										</div>
									</div>

									<div class="s-item-wrap">
										<div class="s-item">

											<div class="s-pic">
												<a href="#" class="s-pic-link">
													<img src="images/grzx/sptj3.jpg" alt="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心" title="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心" class="s-pic-img s-guess-item-img">
												</a>
											</div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">68.00</em></span>

											</div>
											<div class="s-title"><a href="#" title="特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心">特产麻薯6口味500g干吃汤圆麻糬驴打滚糍粑甜品休闲小零食糕点心</a></div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.93%</span>
												<span class="s-sales">月销: 278</span>

											</div>
										</div>
									</div>

									<div class="s-item-wrap">
										<div class="s-item">

											<div class="s-pic">
												<a href="#" class="s-pic-link">
													<img src="images/grzx/sptj4.jpg" alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" class="s-pic-img s-guess-item-img">
												</a>
											</div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">142.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">168.00</em></span>

											</div>
											<div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a></div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 98.03%</span>
												<span class="s-sales">月销: 219</span>

											</div>
										</div>
									</div>

									
								</div>
								</div>

						</div>
					</div>
					<div class="wrap-right">

						<!-- 日历-->
						<div class="day-list">
							<div class="s-bar">
								<a class="i-history-trigger s-icon" href="#"></a>我的日历
								<a class="i-setting-trigger s-icon" href="#"></a>
							</div>
							<div class="s-care s-care-noweather">
								<div class="s-date">
								<% 
							String date = (new java.util.Date()).toLocaleString(); 
							String year=date.substring(0,4);//取第0+1位至第4位
                            String month=date.substring(5,6);//取第5+1位至第6位
                            String day=date.substring(7,9);//取第7+1位至第9位
                            int weekDay = java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_WEEK);
                            String xq ;
                            switch(weekDay)
                            {
                            case 1:xq="一";break;
                            case 2:xq="二";break;
                            case 3:xq="三";break;
                            case 4:xq="四";break;
                            case 5:xq="五";break;
                            case 6:xq="六";break;
                            case 7:xq="日";break;
                            default :xq="天";break;
                            }
							 %> 
									<em><%= day %></em>
									<span>星期<%= xq %></span>
									<span><%= year %> • <%= month %></span>
								</div>
							</div>
						</div>
						<!--店铺推荐 -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>店铺推荐
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="#" target="_blank">
									<div class="face-img-panel">
										<img src="images/grzx/dp.jpg" alt="">
									</div>
									<span class="shop-title">黄则和店</span>
								</a>
								<a class="follow " target="_blank">关注</a>
							</div>
						</div>

					</div>
				</div>
					
			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="grzx.jsp">个人中心</a>
					</li>
					<li class="person">
						<a href="">个人资料</a>
						<ul>
							<li> <a href="xgyhxx.jsp">修改信息</a></li>
							<li> <a href="xgmm.jsp">修改密码</a></li>
							<li> <a href="">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="">我的交易</a>
						<ul>
							<li><a href="">订单管理</a></li>
							<li> <a href="">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li> <a href="">优惠券 </a></li>
							<li> <a href="">红包</a></li>
							<li> <a href="">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li> <a href="">收藏</a></li>
							<li> <a href="">足迹</a></li>
							<li> <a href="">评价</a></li>
							<li> <a href="">消息</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>
		
	</body>


</html>