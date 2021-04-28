<meta charset="utf-8">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header shop">
    <!-- Topbar -->

    <div class="container-fluid" style="background-color: #FD3E43;">
        <center><img src="https://sp-one.vn//Content/uploads/2020/12/top.jpg"/></center>
    </div>

    <!-- End Topbar -->
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-3 col-12">
                    <!-- Logo -->
                    <div class="logo" style="margin-top: 10px;">
                        <a href="#"><img src="images/logo.jpg" alt="logo"></a>
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
                <div class="col-lg-7 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <select>
                                <option selected="selected">All Category</option>
                                <c:forEach var="c" items="${category}">
                                    <option>${c.name}</option>
                                </c:forEach>

                            </select>
                            <form>
                                <input name="search" placeholder="Search Products Here....." type="search">
                                <button class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon" data-toggle="modal" data-target="#myModal"><i
                                    class="ti-power-off"></i><a href="/login">SignIn</a>
                            </a>
                        </div>
                        <div class="sinlge-bar">
                            <a href="/regisForm" class="single-icon" ><i
                                    class="ti-power-off"></i><a href="/SignUp">SingUp</a>
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
                    <div class="col-lg-3 col-md-4 col-12">
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
                    <div class="col-lg-9  col-md-8 col-12">
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
