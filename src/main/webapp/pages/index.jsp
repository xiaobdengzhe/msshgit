<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/18 0018
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户列表</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
    <script type="text/javascript">

    </script>

</head>
<body>
<table border="1">
    <tbody>
    <tr>
        <a href="/toAddUser">添加</a>
    </tr>
    <tr>
        <th>名字</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.username}</td>
            <td>
                <a href="/getUser?id=${u.id }">更新</a>
                <a href="/delete?id=${u.id }">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>