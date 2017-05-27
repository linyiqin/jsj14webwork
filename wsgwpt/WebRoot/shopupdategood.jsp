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
    
    <title>修改商品信息</title>
    
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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改商品信息</strong> / <small>update good</small></div>
					</div>
					<hr/>
					<!--修改框-->				
					<div class="am-form-group">
					<form name="form" class="am-form am-form-horizontal" action="./CkGoodServlet"   accept-charset="utf-8">
							<label for="user-new-password" class="am-form-label">请输入要修改的商品编号</label>
							<div class="am-form-content">
								 <input type="text" name="id" id="id" value="">
								 <input type="hidden" name="method" id="method" value="xg"><br>
							</div>
							<div class="info-btn" align="center">
							 <input type="submit" name="" value="确定" > 
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
