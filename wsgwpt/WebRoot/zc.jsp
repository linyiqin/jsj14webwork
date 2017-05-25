<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" language="JavaScript" src="js/text1.js" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJS.js"></script>
		<script type="text/javascript">
		window.onload=function(){
			var nameElement = document.getElementsByName("name")[0];
			nameElement.onblur = function(){
				var name = this.value;//this等价于nameElement
				//创建XMLHttpRequest对象
			var xhr = getXMLHttpRequest();
			//处理结果
			xhr.onreadystatechange = function(){
				if(xhr.readyState==4){//请求一切正常
					if(xhr.status==200){//服务器响应一切正常
						//alert(xhr.responseText);//得到响应结果
						var msg = document.getElementById("msg");
						if(xhr.responseText=="true"){
							msg.innerHTML =  "<font color='red'>用户名已存在</font>";
							//msg.innerText = "<font color='red'>用户名已存在</font>";
						}else{
							msg.innerHTML = "可以使用";
						}
					}
				}
			}
			
			//创建连接
			xhr.open("get","${pageContext.request.contextPath }/CkNameServlet?user_name="+name);
			//发送请求
			xhr.send(null);
			}
			
		}
	</script>
	</head>

	<body>
        <div class="login-boxtitle">
			<a href="index.jsp"><img alt="logo" src="images/logo.jpg" /></a>
		</div>
		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><img src="images/login.jpg" /></div>
				<div class="login-box">
							<h3 class="title">用户注册</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						   <form name="form" action="./AddUserServlet" onSubmit="return check()"  accept-charset="utf-8">
								   <input type="text" name="name" id="name" placeholder="用户名"><span id="msg"></span><br>
								    <input type="password" name="password" id="password" placeholder="密码">
								        <input type="password" name="password2" id="password2" placeholder="再次输入密码">
								     </div>
								<a href="login.jsp" class="zcnext am-fr am-btn-default">登录</a>
								<div class="am-cf">
									<input type="submit" name="" value="注册" >
								</div>
             </form>
				</div>
			</div>
		</div>
	</body>

</html>