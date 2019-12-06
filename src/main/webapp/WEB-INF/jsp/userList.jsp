<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: molldy
  Date: 2019/12/3
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
<table width="100%" border="1px">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>icon</th>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.age}</td>
            <td>
                <c:if test="${user.pic != null}">
                    <img src="/upload/${user.pic}" alt="头像"/>
                </c:if>

            </td>
            <td>
                <input type="button" value="查看" onclick="location.href='${pageContext.request.contextPath}/queryUser.action?id=${user.id}'"/>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>
            <button onclick="location.href='${pageContext.request.contextPath}/toSignUp.action'">注册</button>
        </td>
    </tr>
</table>
</body>
</html>