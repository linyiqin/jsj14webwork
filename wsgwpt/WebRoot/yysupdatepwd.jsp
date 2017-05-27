<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改运营商密码</title>
    
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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
					</div>
					<hr/>
					<!--修改框-->
					<form name="form" class="am-form am-form-horizontal" action="./UpdateyysServlet" onSubmit="return check()"  accept-charset="utf-8">
					<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">用户名</label>
							<div class="am-form-content">
							<% String flagname = (String)session.getAttribute("flag"); %>
								 <input type="text" name="name" id="name" value="<%= flagname %>"><br>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input type="password" name="password" id="password" placeholder="请输入密码">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								  <input type="password" name="password2" id="password2" placeholder="再次确认密码">
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
