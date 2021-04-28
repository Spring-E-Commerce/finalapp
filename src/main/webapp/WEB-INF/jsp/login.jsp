<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 3/23/2021
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login pages</title>
</head>
<body>

<center>
    <h3>Welcome to Login Pages</h3>
    <c:if test="${message != null && message != ''}">
        <c:if test="${type != null && type != '' && type == 'success'}">
            <div class="alert alert-success">${message}</div>
        </c:if>
    </c:if>
<form action="/doLogin" method="post">
<table>
    <tr>
        <th>
            UserName:
        </th>
        <th>
            <input type="text" name="username"/>
        </th>
    </tr>
    <tr>
        <th>
            Password:
        </th>
        <th>
            <input type="password" name="password"/>
        </th>
    </tr>
    <tr>
        <th></th>
        <th>
            <input type="submit" value="login"/>
        </th>
    </tr>
</table>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</center>
</body>
</html>
