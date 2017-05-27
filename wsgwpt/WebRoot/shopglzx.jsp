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

		<title>店铺管理中心</title>

		<link href="css/admin.css" rel="stylesheet" type="text/css">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/systyle.css" rel="stylesheet" type="text/css">

	</head>
<body>
		
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">店铺管理平台</span></div>
					     <div class="nav-cont">
							<ul>
								
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
										<% String flagName2 = (String)session.getAttribute("shopflag"); %>
										<em class="s-name"><%=flagName2 %><span class=""></em>
										<div class="s-prestige am-btn am-round">
											</span></div>
									</div>
									<div class="m-right">
										<div class="m-new">
											<a href=""><i class="am-icon-bell-o"></i></a>
										</div>
										<div class="m-address">
											<a href="" class="i-trigger"></a>
										</div>
									</div>
								</div>
								</div>
							<div class="box-container-bottom"></div>
							<!--店铺 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>商品管理
									<a class="i-load-more-item-shadow" href="shopgood.jsp">全部商品</a>
								</div>
								<ul>
									<li><a href="shopcxgood.jsp"><i><img src="images/grzx/send.png"/></i><span>商品查询</span></a></li>
									<li><a href="shopaddgood.jsp"><i><img src="images/grzx/send.png"/></i><span>添加商品</span></a></li>
									
									<li><a href="shopupdategood.jsp"><i><img src="images/grzx/send.png"/></i><span>修改商品信息</span></a></li>
									<li><a href="shopdelgood.jsp"><i><img src="images/grzx/send.png"/></i><span>删除商品</span></a></li>
								</ul>
							</div>
							<!--顾客 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>订单管理
									<a class="i-load-more-item-shadow" href="shoporder.jsp">全部订单</a>
								</div>
								<ul>
									<li><a href="shopcxorder.jsp"><i><img src="images/grzx/pay.png"/></i><span>订单查询</span></a></li>
									<li><a ><i></i><span></span></a></li>
									<li><a href="shopupdateorder.jsp"><i><img src="images/grzx/pay.png"/></i><span>修改订单信息<em class="m-num"></em></span></a></li>
									<li><a ><i></i><span></span></a></li>
									<li><a href="shopdelorder.jsp"><i><img src="images/grzx/pay.png"/></i><span>删除订单</span></a></li>
								</ul>
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
                            case 1:xq="天";break;
                            case 2:xq="一";break;
                            case 3:xq="二";break;
                            case 4:xq="三";break;
                            case 5:xq="四";break;
                            case 6:xq="五";break;
                            case 7:xq="六";break;
                            default :xq="天";break;
                            }
							 %> 
									<em><%= day %></em>
									<span>星期<%= xq %></span>
									<span><%= year %> • <%= month %></span>
								</div>
							</div>
						</div>
                      <!--第一名店铺 -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>店铺NO1
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="#" target="_blank">
									<div class="face-img-panel">
										<img src="images/grzx/dp.jpg" alt="">
									</div>
									<span class="shop-title">黄则和店</span>
								</a>
								
							</div>
						</div>
					</div>
				</div>
					
			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="shopglzx.jsp">管理中心</a>
					</li>
					<li class="person">
						<a >店铺管理</a>
						<ul>
							<li> <a href="shopxx.jsp">店铺信息</a></li>
							<li> <a href="shopupdate.jsp">修改信息</a></li>
							<li> <a href="shopupdatepwd.jsp">修改密码</a></li>
							<li> </li>
						</ul>
					</li>
					<li class="person">
						<a >商品管理</a>
						<ul>
							<li><a href="shopcxgood.jsp">商品查询</a></li>
							<li> <a href="shopaddgood.jsp">添加商品</a></li>
							<li> <a href="shopupdategood.jsp">商品修改</a></li>
							<li> <a href="shopdelgood.jsp">删除商品</a></li>
						</ul>
					</li>
					<li class="person">
						<a >订单管理</a>
						<ul>
							<li> <a href="shopcxorder.jsp">订单查询 </a></li>
							<li> <a href="shopupdateorder.jsp">订单修改</a></li>
							<li> <a href="shopdelorder.jsp">订单删除</a></li>
						</ul>
					</li>

					<li class="person">	
					</li>

				</ul>

			</aside>
		</div>
		
	</body>


</html>