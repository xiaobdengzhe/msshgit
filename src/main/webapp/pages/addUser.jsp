<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/26 0026
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>添加用户</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<form action="/addUser" method="post">
    用户名：<input type="text" name="username"><br/>
    <input type="submit" value="添加用户">
</form>
</body>
</html>