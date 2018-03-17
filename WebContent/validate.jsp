<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>凌岩工作室</title>
</head>
<body>
<%@ page import="net.rrs.web.model.AccountBean" %><!--导入AccountBean包-->
<jsp:useBean id="user" class="net.rrs.web.model.AccountBean"></jsp:useBean><!-- 使用javabean -->
<jsp:useBean id="userCheck" class="net.rrs.web.service.UserCheck"></jsp:useBean><!-- 使用javabean -->
<jsp:setProperty property="*" name="user"/><!-- 将表单提交过来的的username和password属性赋值给user对象 -->
<% 
AccountBean userBean=(AccountBean)request.getSession().getAttribute("userBean");
String username,password;
if(userBean != null){
	username=userBean.getUsername()+"[userBean]";
	password=userBean.getPassword()+"[userBean]";
}else{
	username=user.getUsername()+"[user]";
	password=user.getPassword()+"[user]";
}
if(userCheck.valiUser(userBean) || userCheck.valiUser(user)){
	out.print("Login Sucess!!");
	if(userBean==null) request.getSession().setAttribute("userBean", user);//保存session
}else{
	out.print("<script>alert(\"密码错误或登陆信息失效，请重新登陆！\");"+
	"window.document.location.href=\"index.jsp\";</script>");
	out.print("你输入的用户名为:"+username+" <br /> ");
	out.print("你输入的密码为:"+password+" <br /> ");
}
%>
</body>
</html>