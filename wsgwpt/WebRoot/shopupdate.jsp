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
    
    <title>修改店铺信息</title>
    
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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改店铺信息</strong> / <small>update shop</small></div>
					</div>
					<hr/>
					<!--修改框-->
					<form name="form" class="am-form am-form-horizontal" action="./UpdateShopServlet" onSubmit="return check()"  accept-charset="utf-8">
					<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">店铺名</label>
							<div class="am-form-content">
							<% String flagname2 = (String)session.getAttribute("shopflag"); %>
								 <input type="text" readonly name="name" id="name" value="<%= flagname2 %>">
								 <input type="hidden"  name="method" id="method" value="shop"><br>
							</div>
						</div>
						<%
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsgwpt?useUnicode=true&characterEncoding=utf8","root", "");
								Statement stmt = con.createStatement();
								ResultSet as = stmt.executeQuery("select * from shop where shop_name = '"+flagname2+"' ");
								while (as.next()) {
							%>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">店主名字</label>
							<div class="am-form-content">
								<input type="text"  name="username" id="username" value="<%= as.getString("shop_username")%>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">联系方式</label>
							<div class="am-form-content">
								  <input type="text"  name="tel" id="tel" value="<%= as.getString("shop_usertel")%>">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">地址</label>
							<div class="am-form-content">
								  <input type="text"  name="address" id="address" value="<%= as.getString("shop_useraddress")%>">
							</div>
						</div>
						<div class="info-btn" align="center">
							 <input type="submit" name="" value="保存修改" > 
						</div>
						<% } %>
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
