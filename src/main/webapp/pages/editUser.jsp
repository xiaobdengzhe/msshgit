<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/26 0026
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>修改用户</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<form action="/modifyUser" method="post">
    <input type="hidden" name="id" value="${user.id}">
    用户名：<input type="text" name="username" value="${user.username}"><br/>
    <input type="submit" value="修改">
</form>
</body>
</html>
