<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Form</title>
    <style type="text/css">
        <%@include file="../../css/Register.css" %>
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="<c:url value="../../css/sb-admin-2.min.css" />" rel="stylesheet">
</head>
<body>
<center>
    <form:form  method="post" action="add" modelAttribute="product" enctype="multipart/form-data">
        <div class="wrapper">
            <c:if test="${type.equals('update')}">
                <div class="title">
                    Edit Product Pages
                </div>
            </c:if>
            <c:if test="${!type.equals('update')}">
                <div class="title">
                    Add Product Pages
                </div>
            </c:if>

            <div class="form">
                <c:if test="${type.equals('update')}">
                    <div class="inputfield">
                        <label>Id</label>
                        <form:input type="text" class="input" path="id" />
                    </div>
                </c:if>
                <div class="inputfield">
                    <label>Name</label>
                    <form:input type="text" class="input" path="name" />
                </div>
                <div class="inputfield">
                    <label>Title</label>
                    <form:input type="text" class="input" path="title"/>
                </div>

                <div class="inputfield">
                    <label>Price</label>
                    <form:input type="text" class="input" path="price" />
                </div>
                <div class="inputfield">
                    <label>Description</label>
                    <form:input type="text" class="input" path="description" />
                </div>
                <div class="inputfield">
                    <label>Quantity</label>
                    <form:input type="text" class="input" path="quantity" />
                </div>
                <div class="inputfield">
                    <label>Image</label>
                    <input type="file" class="input"  name="fileImage" id="fileImage" accept="image/png , image/jpg" />

                </div>
                <div class="inputfield">
                    <label></label>
                    <img id="thumbnail" alt="review" style="width: 20%">
                </div>
                <div class="inputfield">
                    <label>Category</label>
                    <form:select required="true" items="${categoryMap}" class="input" path="category.id"  ></form:select>
                </div>
                <div class="inputfield">
                    <input type="submit" value="Save" class="btn">
                </div>
            </div>
        </div>
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
