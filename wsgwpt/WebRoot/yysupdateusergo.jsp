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
    
    <title>修改顾客信息</title>
    
	<link href="css/admin.css" rel="stylesheet" type="text/css">
		<link href="css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/systyle.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" language="JavaScript" src="js/text1.js" charset="utf-8"></script>
	</head>
<body>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">运营商管理平台</span></div>
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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改顾客信息</strong> / <small>update User</small></div>
					</div>
					<hr/>
					<!--修改框-->		
					<form class="am-form am-form-horizontal" action="./UpdateUserServlet">
						<div class="am-form-group">
							<label for="user-old-password" class="am-form-label">用户名</label>
							<div class="am-form-content">
								<input type="text" id="name" name="name" value="${user.user_name }">
								<input type="hidden"  name="method" id="method" value="yys">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">密码</label>
							<div class="am-form-content">
								<input type="password" id="password" name="password" value="${user.user_pwd }">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">真实名字</label>
							<div class="am-form-content">
								<input type="text" id="truename" name="truename" value="${user.user_truename }">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">电话号码</label>
							<div class="am-form-content">
								<input type="text" id="tel" name="tel" value="${user.user_tel }">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">收货地址</label>
							<div class="am-form-content">
								<input type="text" id="address" name="address" value="${user.user_address }">
							</div>
						</div>
						<div class="info-btn" align="center">
							 <input type="submit" name="" value="保存修改" > 
						</div>
					</form>
				</div>
				
			</div>

		<aside class="menu">
				<ul>
					<li class="person active">
						<a href="yysglzx.jsp">管理中心</a>
					</li>
					<li class="person">
						<a >运营商资料</a>
						<ul>
							<li> <a >小二信息</a></li>
							<li> <a href="yysupdatepwd.jsp">修改密码</a></li>
							<li> </li>
						</ul>
					</li>
					<li class="person">
						<a >店铺管理</a>
						<ul>
							<li><a href="yyscxshop.jsp">店铺查询</a></li>
							<li> <a href="yysscshop.jsp">删除店铺</a></li>
							<li> <a href="yysupdateshop.jsp">修改店铺信息</a></li>
						</ul>
					</li>
					<li class="person">
						<a >顾客管理</a>
						<ul>
							<li> <a href="yyscxuser.jsp">顾客信息查询 </a></li>
							<li> <a href="yysupdateuser.jsp">修改顾客信息</a></li>
							<li> <a href="yysscuser.jsp">删除顾客信息</a></li>
						</ul>
					</li>

					<li class="person">	
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>
