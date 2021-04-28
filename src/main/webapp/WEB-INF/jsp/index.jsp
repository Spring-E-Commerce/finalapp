<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<jsp:include page="../../include/header.jsp" />
<!-- Slider Area -->

<section style="margin-top: 10px">
    <!-- Single Slider -->
    <div class="row ">
        <div class=" col-xl-4">

        </div>
        <div class="col-lg-5 col-sm-5 col-md-5 col-xl-5" >
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" >
                        <img src="https://sp-one.vn//Content/uploads/2020/12/laptop-web-1-700x350.png" alt="#" style="height: 382px">

                    </div>
                    <div class="carousel-item " >
                        <img src="https://sp-one.vn//Content/uploads/2020/11/1600x800-1-700x350.jpg" alt="#" style="height: 382px">

                    </div>
                    <div class="carousel-item " >
                        <img src="https://theme.hstatic.net/1000026716/1000440777/14/slideshow_8.jpg?v=18046" alt="#" style="height: 382px">

                    </div>

                </div>
            </div>
        </div>
        <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
            <div class="row" style="margin-top: -10px">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <img src="https://theme.hstatic.net/1000026716/1000440777/14/xxxbanner1.jpg?v=18046"/>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" style="margin-top: -10px">
                    <img  src="https://theme.hstatic.net/1000026716/1000440777/14/xxxbanner3.jpg?v=18046"/>
                </div>


            </div>

        </div>
    </div>

    <!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->

<!-- Start Small Banner  -->
<section class="small-banner section" style="margin-top: -10px">

    <div class="row">
        <!-- Single Banner  -->
        <div class="col-sm-4 ">

        </div>
        <!-- /End Single Banner  -->
        <!-- Single Banner  -->
        <div class="col-sm-2 ">
            <div class="single-banner tab-height">
                <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid4.jpg?v=16119" alt="#">
            </div>
        </div>
        <!-- /End Single Banner  -->
        <!-- Single Banner  -->
        <div class="col-sm-2 ">
                    <div class="single-banner tab-height">
                        <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid5.jpg?v=16119" alt="#">
                    </div>
            </div>

        <div class="col-sm-2 ">
            <div class="single-banner tab-height">
                <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid5.jpg?v=16119" alt="#">
            </div>
        </div>
    <div class="col-sm-2 ">
        <div class="single-banner tab-height">
            <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid5.jpg?v=16119" alt="#">
        </div>
    </div>
        <!-- /End Single Banner  -->
    </div>

</section>
<!-- End Small Banner -->


<!-- Start Product New  -->
<div class="product-area most-popular section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Sản phẩm mới</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <c:forEach var="p" items="${product}">
                        <c:if test="${p.title.equals('hot')}">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="/images/product/${p.image}" alt="#" width="550px" height="750px">
                                        <span class="out-of-stock">${p.title}</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View"
                                               href="/product/${p.id}"><i class="far fa-eye"></i><span>Detail</span></a>
                                            <a title="Wishlist" href="#"><i class=" far fa-heart "></i><span>Add to
												Wishlist</span></a>
                                        </div>
                                        <form:form action="/cart/add" method="post">
                                            <input type="hidden" value="${p.id}" name="id"/>
                                            <div class="product-action-2">
                                                <button title="Add to cart" type="submit">Add to cart</button>>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="/product/${p.id}">${p.name}</a></h3>
                                    <div class="product-price">
                                        <span>${p.price} VND</span>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                    <!-- End Single Product -->

                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product New -->

<!-- Start Product Hot-->
<div class="product-area most-popular section" style="margin-top: 20px">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Sản phẩm bán chạy</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <c:forEach var="p" items="${product}">
                        <c:if test="${p.title.equals('new')}">
                    <div class="single-product">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img class="default-img" src="/images/product/${p.image}" alt="#" width="550px" height="750px">
                                <img class="hover-img" src="${p.image}" alt="#" width="550px" height="750px">
                                <span class="new">${p.title}</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a data-toggle="modal" data-target="#exampleModal" title="Quick View"
                                       href="/product/${p.id}"><i class=" ti-eye"></i><span>Detail</span></a>
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to
												Wishlist</span></a>

                                </div>
                                <form action="/cart/add" method="post">
                                    <input type="hidden" value="${p.id}" name="id"/>
                                    <div class="product-action-2">
                                        <button title="Add to cart" type="submit">Add to cart</button>>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="/product/${p.id}">${p.name}</a></h3>
                            <div class="product-price">

                                <span>${p.price} VND</span>
                            </div>
                        </div>
                    </div>
                    </c:if>
                    </c:forEach>
                    <!-- End Single Product -->

                    <!-- End Single Product -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product Hot -->

<!-- Start Shop Home List  -->
<section class="shop-home-list section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>On sale</h1>
                        </div>
                    </div>
                </div>

                <!-- Start Single List  -->
                <c:forEach var="p" items="${product}">
                    <c:if test="${p.title.equals('on sale')}">
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="/images/product/${p.image}" alt="#">
                                <form action="/cart/add" method="post">
                                    <input type="hidden" value="${p.id}" name="id"/>
                                    <button type="submit" class="buy"><i class="fa fa-shopping-bag"></i></button>
                                </form>

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h4 class="title"><a href="/product/${p.id}">${p.name}</a></h4>
                                <p class="price with-discount">${p.price} vnd</p>
                            </div>
                        </div>
                    </div>
                </div>
                    </c:if>
                </c:forEach>
                <!-- End Single List  -->

            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Best Seller</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
               <c:forEach var="p" items="${product}">
                  <c:if test="${p.title.equals('best sale')}">
                   <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="/images/product/${p.image}" alt="#">
                                <form action="/cart/add" method="post">
                                    <input type="hidden" value="${p.id}" name="id"/>
                                    <button type="submit" class="buy"><i class="fa fa-shopping-bag"></i></button>
                                </form>

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="/product/${p.id}">${p.name}</a></h5>
                                <p class="price with-discount">${p.price} vnd</p>
                            </div>
                        </div>
                    </div>
                </div>
                  </c:if>
               </c:forEach>
                <!-- End Single List  -->

            </div>
            <div class="col-lg-4 col-md-6 col-12">
              <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Top viewed</h1>
                        </div>
                    </div>
                </div>
                  <!-- Start Single List  -->
               <c:forEach var="p" items="${product}">
                  <c:if test="${p.title.equals('top viewed')}">
                    <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="/images/product/${p.image}" alt="#">
                                <form action="/cart/add" method="post">
                                    <input type="hidden" value="${p.id}" name="id"/>
                                    <button type="submit" class="buy"><i class="fa fa-shopping-bag"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="/product/${p.id}">${p.name}</a></h5>
                                <p class="price with-discount">${p.price} vnd </p>
                            </div>
                        </div>
                    </div>
                </div>
                  </c:if>
               </c:forEach>
                  <!-- End Single List  -->

            </div>
        </div>
    </div>
</section>
<!-- End Shop Home List  -->

<!-- Start Shop Services Area -->
<section class="shop-services section home">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-rocket"></i>
                    <h4>Free shiping</h4>
                    <p>Orders over $100</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-reload"></i>
                    <h4>Free Return</h4>
                    <p>Within 30 days returns</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-lock"></i>
                    <h4>Sucure Payment</h4>
                    <p>100% secure payment</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-tag"></i>
                    <h4>Best Peice</h4>
                    <p>Guaranteed price</p>
                </div>
                <!-- End Single Service -->
            </div>
        </div>
    </div>
</section>
<!-- End Shop Services Area -->

<!-- Start Shop Newsletter  -->
<section class="shop-newsletter section">
    <div class="container">
        <div class="inner-top">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-12">
                    <!-- Start Newsletter Inner -->
                    <div class="inner">
                        <h4>Newsletter</h4>
                        <p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
                        <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                            <input name="EMAIL" placeholder="Your email address" required="" type="email">
                            <button class="btn">Subscribe</button>
                        </form>
                    </div>
                    <!-- End Newsletter Inner -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Shop Newsletter -->

<!-- Modal -->

<!-- Modal end -->

<!-- Start Footer Area -->
<jsp:include page="../../include/footer.jsp" />
<!-- /End Footer Area -->

<!-- Jquery -->
<jsp:include page="../../include/js.jsp" />
</body>

</html>
