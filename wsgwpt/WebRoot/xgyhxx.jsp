<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改用户信息</title>
    
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
							</div>
						</ul>
						<ul class="message-r">
							<div class="menu-hd">
							<a href="index.jsp" target="_top" class="h">商城首页|| </a>
							<a href="grzx.jsp" target="_top">个人中心|| </a>
							<a href="gwc.jsp" target="_top" class="h">购物车|| </a>
							<a href="#" target="_top">收藏夹</a>
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
                                <li class="qc"><a href="goods.jsp">商品</a></li>
							</ul>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
<%
            String flagName = (String)session.getAttribute("data"); 
		   Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsgwpt?useUnicode=true&characterEncoding=utf8", "root", "");
			Statement stmt = con.createStatement();
			ResultSet as = stmt.executeQuery("select * from user where user_name = '"+flagName+"'");
			while (as.next()) {
		%>
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改信息</strong> / <small>Update</small></div>
					</div>
					<hr/>
					<!--修改框-->
					<form class="am-form am-form-horizontal" action="./UpdateUserServlet">
						<div class="am-form-group">
							<label for="user-old-password" class="am-form-label">用户名</label>
							<div class="am-form-content">
								<input type="text" id="name" name="name" value="<%=as.getString("user_name") %>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">密码</label>
							<div class="am-form-content">
								<input type="password" id="password" name="password" value="<%=as.getString("user_pwd") %>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">真实名字</label>
							<div class="am-form-content">
								<input type="text" id="truename" name="truename" value="<%=as.getString("user_truename") %>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">电话号码</label>
							<div class="am-form-content">
								<input type="text" id="tel" name="tel" value="<%=as.getString("user_tel") %>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">收货地址</label>
							<div class="am-form-content">
								<input type="text" id="address" name="address" value="<%=as.getString("user_address") %>">
							</div>
						</div>
						<div class="info-btn" align="center">
							 <input type="submit" name="" value="保存修改" > 
						</div>
<%
			}
		%>	
					</form>

				</div>
				
			</div>

			<aside class="menu">
				<ul>
					<li class="person">
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
						<a href="#">我的交易</a>
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
