<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>

<html lang="zxx">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>CHC Computer</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="<c:url value="../../images/favicon.png" />">
    <!-- Web Font -->
    <link
            href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
            rel="stylesheet">

    <!-- StyleSheet -->
    <link rel="stylesheet" href="<c:url value="../../css/style.css" />">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<c:url value="../../css/bootstrap.css" />">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<c:url value="../../css/magnific-popup.min.css" />">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="../../css/font-awesome.css" />">
    <!-- Fancybox -->
    <link rel="stylesheet" href="<c:url value="../../css/jquery.fancybox.min.css" />">
    <!-- Themify Icons -->

    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="<c:url value="../../css/niceselect.css" />">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<c:url value="../../css/animate.css" />">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="<c:url value="../../css/flex-slider.min.css" />">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<c:url value="../../css/owl-carousel.css" />">
    <!-- Slicknav -->
    <link rel="stylesheet" href="<c:url value="../../css/slicknav.min.css" />">
    <link rel="stylesheet" href="<c:url value="../../css/themify-icons.css" />">
    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="<c:url value="../../css/reset.css" />">
    <link rel="stylesheet" href="<c:url value="../../css/style1.css" />">
    <link rel="stylesheet" href="<c:url value="../../css/responsive.css" />">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

<body>
<header class="header shop">
    <!-- Topbar -->

    <div class="container-fluid" style="background-color: #FD3E43;">
        <center><img src="https://sp-one.vn//Content/uploads/2020/12/top.jpg"/></center>
    </div>

    <!-- End Topbar -->
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo" style="margin-top: 10px;">
                        <a href="index.html"><img src="images/logo.jpg" alt="logo"></a>
                    </div>
                    <!--/ End Logo -->
                    <!-- Search Form -->
                    <div class="search-top">
                        <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                        <!-- Search Form -->
                        <div class="search-top">
                            <form class="search-form">
                                <input type="text" placeholder="Search here..." name="search">
                                <button value="search" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <!--/ End Search Form -->
                    </div>
                    <!--/ End Search Form -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <select>
                                <option selected="selected">All Category</option>
                                <option></option>
                                <c:forEach var="c" items="${category}">
                                    <option value="${c.id}" label="--select--">${c.name}</option>
                                </c:forEach>

                            </select>
                            <form>
                                <input name="search" placeholder="Search Products Here....." type="search">
                                <button class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
                        <div class="sinlge-bar">

                            <a href="#" class="single-icon" data-toggle="modal" data-target="#myModal"><i
                                    class="ti-power-off"></i><a href="login.html#">Login</a>
                                <div class="modal fade" id="myModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">×</button>
                                            </div>

                                            <!-- Modal body -->

                                            <form class="login-form" autocomplete="off" action="#">
                                                <input type="email" name="email" placeholder="Email"/>
                                                <div class="input-icon">
                                                    <input type="password" name="email" placeholder="Password"/>
                                                    <i class="fa fa-eye show-password"></i>
                                                </div>
                                                <a href="#" class="forgot">Forgot password?</a>
                                                <button>Sign in</button>
                                            </form>

                                            <!-- Modal footer -->


                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-user-circle-o"
                                                               aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar shopping">
                            <a href="#" class="single-icon"><i class="ti-bag"></i> <span
                                    class="total-count">2</span></a>
                            <!-- Shopping Item -->
                            <div class="shopping-item">
                                <div class="dropdown-cart-header">
                                    <span>2 Items</span>
                                    <a href="#">View Cart</a>
                                </div>
                                <ul class="shopping-list">
                                    <li>
                                        <a href="#" class="remove" title="Remove this item"><i
                                                class="fa fa-remove"></i></a>
                                        <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70"
                                                                          alt="#"></a>
                                        <h4><a href="#">Woman Ring</a></h4>
                                        <p class="quantity">1x - <span class="amount">$99.00</span></p>
                                    </li>
                                    <li>
                                        <a href="#" class="remove" title="Remove this item"><i
                                                class="fa fa-remove"></i></a>
                                        <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70"
                                                                          alt="#"></a>
                                        <h4><a href="#">Woman Necklace</a></h4>
                                        <p class="quantity">1x - <span class="amount">$35.00</span></p>
                                    </li>
                                </ul>
                                <div class="bottom">
                                    <div class="total">
                                        <span>Total</span>
                                        <span class="total-amount">$134.00</span>
                                    </div>
                                    <a href="checkout.html" class="btn animate">Checkout</a>
                                </div>
                            </div>
                            <!--/ End Shopping Item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="all-category">
                            <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="false"></i>DANH MỤC SP
                            </h3>
                            <ul class="main-category">
                                <li><a href="#">Linh kiện máy tính <i class="fa fa-angle-right"
                                                                      aria-hidden="true"></i></a>
                                    <ul class="mega-menu">
                                        <li><a href="#">CPU</a></li>
                                        <li><a href="#">VGA</a></li>
                                        <li><a href="#">RAM</a></li>
                                        <li><a href="#">PSU </a></li>
                                    </ul>
                                </li>
                                <li class="main-mega"><a href="#">Best selling <i class="fa fa-angle-right"
                                                                                  aria-hidden="true"></i></a>
                                    <ul class="mega-menu">
                                        <li class="single-menu">
                                            <a href="#" class="title-link">CPU</a>
                                            <div class="image">
                                                <img src="https://via.placeholder.com/225x155" alt="#">
                                            </div>
                                            <div class="inner-link">
                                                <a href="#">Core i5 10th</a>
                                                <a href="#">Core i7 8700k</a>
                                                <a href="#">Core i9 9900k</a>
                                                <a href="#">AMD Ryzen 7300x</a>
                                            </div>
                                        </li>
                                        <li class="single-menu">
                                            <a href="#" class="title-link">VGA</a>
                                            <div class="image">
                                                <img src="https://via.placeholder.com/225x155" alt="#">
                                            </div>
                                            <div class="inner-link">
                                                <a href="#">Radeon Rx 570</a>
                                                <a href="#">GeForce GTX 1060</a>
                                                <a href="#">Radeon Rx 3000X</a>
                                                <a href="#">GeForce GTX 2060</a>
                                            </div>
                                        </li>

                                    </ul>
                                </li>
                                <li><a href="#">Máp bộ CP</a></li>
                                <li><a href="#">Laptop</a></li>
                                <li><a href="#">Thiết bị mạng</a></li>
                                <li><a href="#">Gaming Gear</a></li>
                                <li><a href="#">Phụ kiện</a></li>
                                <li><a href="#">Tản nhiệt Cooling</a></li>
                                <li><a href="#">Thiết bị văn phòng</a></li>
                                <li><a href="#">Ghế Gaming</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li class="active"><a href="#">Home</a></li>
                                            <li><a href="#">Product</a></li>

                                            <li><a href="#">Shop<i class="ti-angle-down"></i><span
                                                    class="new">New</span></a>
                                                <ul class="dropdown">
                                                    <li><a href="shop">Shop Grid</a></li>
                                                    <li><a href="cart.html">Cart</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>

                                            <li><a href="#">Blog<i class="ti-angle-down"></i></a>

                                            </li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!--/ End Header -->

<!-- Slider Area -->

<section style="margin-top: 10px;">
    <!-- Single Slider -->
    <div class="row ">
        <div class="col-sm-3">

        </div>
        <div class="col-sm-6">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://sp-one.vn//Content/uploads/2020/12/laptop-web-1-700x350.png" alt="#">

                    </div>
                    <div class="carousel-item ">
                        <img src="https://sp-one.vn//Content/uploads/2020/11/1600x800-1-700x350.jpg" alt="#">

                    </div>
                    <div class="carousel-item ">
                        <img src="https://sp-one.vn//Content/uploads/2020/11/pc-spone-1-700x350.png" alt="#">

                    </div>

                </div>
            </div>

        </div>
        <div class="col-sm-3">
            <div class="row">
                <div class="col-12">
                    <img src="http://cpdanangcomputer.com/wp-content/uploads/2020/05/top1.png"/>
                </div>
                <div class="col-12" style="margin-top: 17px;">
                    <img src="https://theme.hstatic.net/1000026716/1000440777/14/xxxbanner4.jpg?v=16119"/>
                </div>
            </div>

        </div>
    </div>


    <!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->

<!-- Start Small Banner  -->
<section class="small-banner section">

    <div class="row">
        <!-- Single Banner  -->
        <div class="col-lg-3 ">

        </div>
        <!-- /End Single Banner  -->
        <!-- Single Banner  -->
        <div class="col-3 ">
            <div class="single-banner">
                <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid4.jpg?v=16119" alt="#">

            </div>
        </div>

        <!-- /End Single Banner  -->
        <!-- Single Banner  -->
        <div class="col-3 ">
            <div class="single-banner tab-height">
                <img src="https://theme.hstatic.net/1000026716/1000440777/14/solid5.jpg?v=16119" alt="#">

            </div>
        </div>
        <div class="col-3 ">
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
                                        <img src="${p.image}" alt="#" width="550px" height="750px">

                                        <span class="out-of-stock">${p.title}</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View"
                                               href="#"><i class="far fa-eye"></i><span>Detail</span></a>
                                            <a title="Wishlist" href="#"><i class=" far fa-heart "></i><span>Add to
												Wishlist</span></a>

                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="#">${p.name}</a></h3>
                                    <div class="product-price">
                                        <span class="old">${p.price + 110000} VND</span>
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
<div class="product-area most-popular section">
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
                                <img class="default-img" src="${p.image}" alt="#" width="550px" height="750px">
                                <img class="hover-img" src="${p.image}" alt="#" width="550px" height="750px">
                                <span class="new">${p.title}</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a data-toggle="modal" data-target="#exampleModal" title="Quick View"
                                       href="#"><i class=" ti-eye"></i><span>Detail</span></a>
                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to
												Wishlist</span></a>

                                </div>
                                <div class="product-action-2">
                                    <a title="Add to cart" href="#">Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="product-details.html">${p.name}</a></h3>
                            <div class="product-price">
                                <span class="old">${p.price + 1235600} VND</span>
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
                                <img src="${p.image}" alt="#">
                                <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h4 class="title"><a href="#">${p.name}</a></h4>
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
                                <img src="${p.image}" alt="#">
                                <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="#">${p.name}</a></h5>
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
                                <img src="${p.image}" alt="#">
                                <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="#">${p.name}</a></h5>
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close"
                                                                                                  aria-hidden="true"></span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row no-gutters">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <!-- Product Slider -->
                        <div class="product-gallery">
                            <div class="quickview-slider-active">
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="https://via.placeholder.com/569x528" alt="#">
                                </div>
                            </div>
                        </div>
                        <!-- End Product slider -->
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="quickview-content">
                            <h2>Flared Shift Dress</h2>
                            <div class="quickview-ratting-review">
                                <div class="quickview-ratting-wrap">
                                    <div class="quickview-ratting">
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <a href="#"> (1 customer review)</a>
                                </div>
                                <div class="quickview-stock">
                                    <span><i class="fa fa-check-circle-o"></i> in stock</span>
                                </div>
                            </div>
                            <h3>$29.00</h3>
                            <div class="quickview-peragraph">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum
                                    ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui
                                    nemo ipsum numquam.</p>
                            </div>
                            <div class="size">
                                <div class="row">
                                    <div class="col-lg-6 col-12">
                                        <h5 class="title">Size</h5>
                                        <select>
                                            <option selected="selected">s</option>
                                            <option>m</option>
                                            <option>l</option>
                                            <option>xl</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6 col-12">
                                        <h5 class="title">Color</h5>
                                        <select>
                                            <option selected="selected">orange</option>
                                            <option>purple</option>
                                            <option>black</option>
                                            <option>pink</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="quantity">
                                <!-- Input Order -->
                                <div class="input-group">
                                    <div class="button minus">
                                        <button type="button" class="btn btn-primary btn-number" disabled="disabled"
                                                data-type="minus" data-field="quant[1]">
                                            <i class="ti-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" name="quant[1]" class="input-number" data-min="1"
                                           data-max="1000" value="1">
                                    <div class="button plus">
                                        <button type="button" class="btn btn-primary btn-number" data-type="plus"
                                                data-field="quant[1]">
                                            <i class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <!--/ End Input Order -->
                            </div>
                            <div class="add-to-cart">
                                <a href="#" class="btn">Add to cart</a>
                                <a href="#" class="btn min"><i class="ti-heart"></i></a>
                                <a href="#" class="btn min"><i class="fa fa-compress"></i></a>
                            </div>
                            <div class="default-social">
                                <h4 class="share-now">Share:</h4>
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="youtube" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->

<!-- Start Footer Area -->
<footer class="footer">
    <!-- Footer Top -->
    <div class="footer-top section">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer about">
                        <div class="logo">
                            <a href="index.html"><img src="images/logo2.png" alt="#"></a>
                        </div>
                        <p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna
                            eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor,
                            facilisis luctus, metus.</p>
                        <p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456
										789</a></span></p>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-2 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer links">
                        <h4>Information</h4>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-2 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer links">
                        <h4>Customer Service</h4>
                        <ul>
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Money-back</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Single Widget -->
                    <div class="single-footer social">
                        <h4>Get In Tuch</h4>
                        <!-- Single Widget -->
                        <div class="contact">
                            <ul>
                                <li>NO. 342 - London Oxford Street.</li>
                                <li>012 United Kingdom.</li>
                                <li>info@eshop.com</li>
                                <li>+032 3456 7890</li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->
                        <ul>
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-flickr"></i></a></li>
                            <li><a href="#"><i class="ti-instagram"></i></a></li>
                        </ul>
                    </div>
                    <!-- End Single Widget -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer Top -->
    <div class="copyright">
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-6 col-12">
                        <div class="left">
                            <p>Copyright © 2020 <a href="http://www.wpthemesgrid.com"
                                                   target="_blank">Wpthemesgrid</a> - All Rights Reserved.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="right">
                            <img src="images/payments.png" alt="#">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.0.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="js/colors.js"></script>
<!-- Slicknav JS -->
<script src="js/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="js/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="js/magnific-popup.js"></script>
<!-- Waypoints JS -->
<script src="js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="js/nicesellect.js"></script>
<!-- Flex Slider JS -->
<script src="js/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="js/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="js/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="js/easing.js"></script>
<!-- Active JS -->
<script src="js/active.js"></script>
</body>

</html>
