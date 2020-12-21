
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
                        <a href="#"><img src="/images/logo.jpg" alt="logo"></a>
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
<br><br>
<form:form action="/cart/add" modelAttribute="detail">
    <div class="container">
         <div class="row">
                        <div class="col-lg-6 ">
                            <!-- Product Slider -->
                            <div class="product-gallery">
                                <div class="quickview-slider-active">
                                    <div class="single-slider">
                                        <img src="${detail.image}" width="569" height="528" alt="#">
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
