<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="<c:url value="../../css/sb-admin-2.min.css" />" rel="stylesheet">
</head>
<body>

<center>
    <h3>Welcome to the Register Form</h3>
    <c:if test="${message != null && message != ''}">
        <c:if test="${type != null && type != '' && type == 'fail'}">
            <div class="alert alert-danger">${message}</div>
        </c:if>
        <c:if test="${type != null && type != '' && type == 'success'}">
            <div class="alert alert-success">${message}</div>
        </c:if>
    </c:if>
<form:form action="/registration" modelAttribute="customer" method="post"  enctype="multipart/form-data">
<table>
    <tr>
        <th>FullName</th>
        <th><form:input type="text" path="fullName" /></th>
    </tr>

    <tr>
        <th>Email</th>
        <th><form:input path="email" type="text" /></th>
    </tr>
    <tr>
        <th>UserName</th>
        <th><input type="text" name="username" required/></th>
    </tr>
    <tr>
        <th>Password</th>
        <th><input type="password" name="password" required /></th>
    </tr>
    <tr>
        <th>Birthday</th>
        <th><form:input path="birthday" type="date" /></th>
    </tr>
    <tr>
        <th>Phone Number</th>
        <th><form:input path="phoneNumber" /></th>
    </tr>
    <tr>
        <th>Gender</th>
        <th>
            <form:input path="gender" type="text" />
         </th>
    </tr>
    <tr>
        <th>Address</th>
        <th>
            <form:input path="address" type="text" />
        </th>
    </tr>
    <tr>
        <th>Brand Logo</th>
        <th><input type="file" name="fileImage" id="fileImage" accept="image/png , image/jpg" /></th>
    </tr>
    <tr>
        <th></th>
        <th><img id="thumbnail"  width="10%" ></th>
    </tr>
    <tr>
        <th></th>
        <th>
            <input type="submit" value="SingUp" />
        </th>
    </tr>
</table>
</form:form>
</center>
</body>
<script  type="text/javascript">
    $(document).ready(function () {
        $('#fileImage').change(function () {
            showThumbnailImage(this);
        })
    });
    function showThumbnailImage(fileInput) {
        file = fileInput.files[0];
        reader = new FileReader() ;

        reader.onload = function (e) {
            $('#thumbnail').attr('src' , e.target.result);
        };
        reader.readAsDataURL(file);
    }

</script>
</html>
