<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<%@ page import="net.rrs.web.model.AccountBean" %><!--导入AccountBean包-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title>登录成功</title>  
</head>  
<body>  
<%   
	AccountBean user=new AccountBean();
    user=(AccountBean)session.getAttribute("user");  
    String username=user.getUserName();  
 %>  
   
<%=username %> ,欢迎您来到成功页面!<br>  
 您的IP是:<%=request.getRemoteAddr() %><br>  
你的主机是:<%=request.getRemoteHost() %><br>  
你使用的协议是:<%=request.getProtocol() %><br>  
你目前的地址是:<%=request.getRealPath("/") %>  
你的主机端口是:<%=request.getRemotePort() %>  
</body>  
</html>  