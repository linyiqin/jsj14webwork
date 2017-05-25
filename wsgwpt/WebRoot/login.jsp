<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" language="JavaScript" src="js/text1.js" charset="utf-8"></script>
	</head>

	<body>
        <div class="login-boxtitle">
			<a href="index.jsp"><img alt="logo" src="images/logo.jpg" /></a>
		</div>
		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><img src="images/login.jpg" /></div>
				<div class="login-box">
							<h3 class="title">用户登录</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						   <form name="form" action="./LoginServlet" onSubmit="return check()"  accept-charset="utf-8">
								   <input type="text" name="name" id="name" placeholder="用户名"><br>
								    <input type="password" name="password" id="password" placeholder="密码">
								     </div>
								 
								<a href="zc.jsp" class="zcnext am-fr am-btn-default">注册</a>
								<div class="am-cf">
									<input type="submit" name="" value="登录" >
								</div>
             </form>
				</div>
			</div>
		</div>
	</body>

</html>