<%--
  Created by IntelliJ IDEA.
  User: molldy
  Date: 2019/12/3
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<table width="100%" border="1px">
    <tr>
        <td>id</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>姓名</td>
        <td>${user.username}</td>
    </tr>
    <tr>
        <td>年龄</td>
        <td>${user.age}</td>
    </tr>
    <tr>
        <td>头像</td>
        <td>
            <img src="/upload/${user.pic}" alt="头像"/>
        </td>
    </tr>
    <tr>
        <td>
            <input type="button" value="修改" onclick="location.href='${pageContext.request.contextPath}/editUser.action?id=${user.id}'"/>
        </td>
    </tr>
</table>

</body>
</html>

