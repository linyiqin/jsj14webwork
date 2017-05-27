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
    
    <title>查询商品</title>
    
	<link href="css/admin.css" rel="stylesheet" type="text/css">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/systyle.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" language="JavaScript" src="js/text1.js" charset="utf-8"></script>
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

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">查询到以下信息</strong> / <small>Ck good</small></div>
					</div>
					<hr/>
					<!--修改框-->		
					<form name="form" class="am-form am-form-horizontal" accept-charset="utf-8">		
					<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">商品编号</label>
							<div class="am-form-content">
								 <input type="text" readonly name="name" id="name" value="${good.goods_id} "><br>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">商品名</label>
							<div class="am-form-content">
								<input type="text" readonly name="username" id="username" value="${good.goods_name}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">商品类型</label>
							<div class="am-form-content">
								  <input type="text" readonly name="tel" id="tel" value="${good.goods_type}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">商品库存</label>
							<div class="am-form-content">
								  <input type="text" readonly name="address" id="address" value="${good.goods_amount}">
							</div>
						</div>
					<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">商品价格</label>
							<div class="am-form-content">
								  <input type="text" readonly name="address" id="address" value="${good.good_price}">
							</div>
						</div>
						</form>
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
