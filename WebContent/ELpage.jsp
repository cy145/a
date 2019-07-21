<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">
</head>
<body>
<% 
	request.setAttribute("flag", "hello");
%>
<h1>${param.msg == "hello" ? "欢迎":"拜拜"}</h1>
<h1>${param.msg == flag ? "欢迎":"拜拜"}</h1>
<h1><%=request.getParameter("msg")%></h1>
<h1>${pageContext.request.contextPath}</h1>
</body>
</html>