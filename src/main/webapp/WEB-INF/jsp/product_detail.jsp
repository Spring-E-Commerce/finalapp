
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="zxx">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>CP Computer</title>
    <!-- Favicon -->
  <jsp:include page="../../include/css.jsp" />
</head>
<body>
<jsp:include page="../../include/menu.jsp" />
<br><br>
<form:form action="/cart/add" modelAttribute="detail">
    <div class="container">
         <div class="row">
                        <div class="col-lg-6 ">
                            <!-- Product Slider -->
                            <div class="product-gallery">
                                <div class="quickview-slider-active">
                                    <div class="single-slider">
                                        <img src="/images/product/${detail.image}" width="569" height="528" alt="#">
                                    </div>

                                </div>
                            </div>
                            <!-- End Product slider -->
                        </div>
                        <div class="col-lg-6 ">
                            <div class="quickview-content">
                                <h2>${detail.name}</h2>
                                <div class="quickview-ratting-review">
                                    <div class="quickview-ratting-wrap">
                                        <div class="quickview-ratting">
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="yellow fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div >
                                        <span class="new"><i class="fa fa-check-circle-o"></i>${detail.title}</span>
                                    </div>
                                </div>
                                <h3>${detail.price} vnd</h3>
                                <div class="quickview-peragraph">
                                    <p>${detail.description}</p>
                                </div>

                                <div class="quantity">
                                    <!-- Input Order -->
                                    <div class="input-group">

                                        <input type="number" name="qty" class="input-number" min="1"
                                               data-max="1000" value="1">

                                    </div>
                                    <!--/ End Input Order -->
                                </div>

                                    <input type="hidden" value="${detail.id}" name="id"/>
                                    <div class="add-to-cart">
                                        <button class="btn" type="submit">Add to cart</button>
                                    </div>


                                <div class="default-social">
                                    <div class="add-to-cart">
                                        <a href="/" class="btn">Continue Shopping >></a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</form:form>
<jsp:include page="../../include/js.jsp" />
<jsp:include page="../../include/footer.jsp" />
</body>
</html>
