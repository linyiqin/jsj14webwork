function del(){

if(confirm("确定要删除该信息？")){
	window.location.href = "del.jsp";

}
function confirmDel(name)
{
 if(confirm("确定要删除该信息？"))
 {
  window.location.href='dele.jsp?name='+name;
 }
}

}
function check1()
{
	if(document.form1.user_name.value ==""){
		window.alert("请输入收货人名字！");
		document.form1.user_name.focus();
		return false;
	}
	if(document.form1.user_address.value ==""){
		window.alert("请输入收货地址！");
		document.form1.user_address.focus();
		return false;
	}
	if(document.form1.user_tel.value ==""){
		window.alert("请输入收货人联系方式！");
		document.form1.user_tel.focus();
		return false;
	}
}

function check()
{
	 
	if(document.form.name.value ==""){
		window.alert("用户名不能为空！");
		document.form.name.focus();
		return false;
	}
	if(document.form.password.value ==""){
		window.alert("密码不能为空");
		document.form.password.focus();
		return false;
	}
	if(document.form.password2.value ==""){
		window.alert("确认密码为空");
		document.form.password2.focus();
		return false;
	}
	if(document.form.password.value != password2.value){
		window.alert("密码与确认密码不一致");
		document.form.password2.focus();
		return false;
	}
	
	return true;
}