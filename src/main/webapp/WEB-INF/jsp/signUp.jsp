<%--
  Created by IntelliJ IDEA.
  User: molldy
  Date: 2019/12/3
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/signUp.action" method="post" enctype="multipart/form-data">
    <table width="100%" border="1px">
        <tr>
            <td>姓名</td>
            <td><input type="text" name="username" value="${user.username}"></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><input type="text" name="age" value="${user.age}"></td>
        </tr>
        <tr>
            <td>头像</td>
            <td>
                <input type="file" name="picFile" />
            </td>
        </tr>
        <tr>
            <input type="submit" value="注册">
        </tr>
    </table>
</form>
</body>
</html>
