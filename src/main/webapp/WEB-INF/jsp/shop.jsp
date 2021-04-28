<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zxx">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>CHC - ECommerce</title>
   <jsp:include page="../../include/css.jsp" />
</head>
<body class="js">
<!-- Header -->
<jsp:include page="../../include/menu.jsp" />
<!--/ End Header -->

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="/">Home<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="/shop">Shop Grid</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- Product Style -->
<section class="product-area shop-sidebar shop section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                <div class="shop-sidebar">
                    <!-- Single Widget -->
                    <div class="single-widget category">
                        <h3 class="title">Categories</h3>
                        <ul class="categor-list">
                            <c:forEach var="c" items="${category}">
                                <li><a href="/category/${c.id}" >${c.name}</a></li>
                            </c:forEach>


                        </ul>
                    </div>
                    <!--/ End Single Widget -->
                    <!-- Shop By Price -->
                    <div class="single-widget range">
                        <h3 class="title">Shop by Price</h3>
                        <div class="price-filter">
                            <div class="price-filter-inner">
                                <div id="slider-range"></div>
                                <div class="price_slider_amount">
                                    <div class="label-input">
                                        <span>Range:</span><input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="check-box-list">
                            <li>
                                <label class="checkbox-inline" for="1"><input name="news" id="1" type="checkbox">$20 - $50<span class="count">(3)</span></label>
                            </li>
                            <li>
                                <label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">$50 - $100<span class="count">(5)</span></label>
                            </li>
                            <li>
                                <label class="checkbox-inline" for="3"><input name="news" id="3" type="checkbox">$100 - $250<span class="count">(8)</span></label>
                            </li>
                        </ul>
                    </div>
                    <!--/ End Shop By Price -->
                    <!-- Single Widget -->
                    <div class="single-widget recent-post">

                        <!-- Single Post -->
                        <c:forEach var="p" items="${product}">
                            <c:if test="${p.title.equals('best')}">
                        <div class="single-post first">
                            <div class="image">
                                <img src="/images/product/${p.image}" alt="#">
                            </div>
                            <div class="content">
                                <h5><a href="#">${p.name}</a></h5>
                                <p class="price">${p.price}</p>
                                <ul class="reviews">
                                    <li class="yellow"><i class="ti-star"></i></li>
                                    <li class="yellow"><i class="ti-star"></i></li>
                                    <li class="yellow"><i class="ti-star"></i></li>
                                    <li class="yellow"><i class="ti-star"></i></li>
                                    <li class="yellow"><i class="ti-star"></i></li>
                                </ul>
                            </div>
                        </div>
                            </c:if>
                        </c:forEach>
                        <!-- End Single Post -->
                    </div>
                    <!--/ End Single Widget -->

                </div>
            </div>
            <div class="col-lg-9 col-md-8 col-12">
                <div class="row">
                    <div class="col-12">
                        <!-- Shop Top -->
                        <div class="shop-top">
                            <div class="shop-shorter">
                                <div class="single-shorter">
                                    <label>Show :</label>
                                    <select>
                                        <option selected="selected">09</option>
                                        <option>15</option>
                                        <option>25</option>
                                        <option>30</option>
                                    </select>
                                </div>
                                <div class="single-shorter">
                                    <label>Sort By :</label>
                                    <select>
                                        <option selected="selected">Name</option>
                                        <option>Price</option>
                                        <option>Size</option>
                                    </select>
                                </div>
                            </div>
                            <ul class="view-mode">
                                <li class="active"><a href="shop-grid.html"><i class="fa fa-th-large"></i></a></li>
                                <li><a href="shop-list.html"><i class="fa fa-th-list"></i></a></li>
                            </ul>
                        </div>
                        <!--/ End Shop Top -->
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="p" items="${product}">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-product">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img class="default-img" src="/images/product/${p.image}" alt="#">
                                    <img class="hover-img" src="/images/product/${p.image}" alt="#">
                                    <c:if test="${p.title.equals('sale 30')}">
                                        <span class="price-dec">30% Off</span>
                                    </c:if>
                                    <c:if test="${p.title.equals('sale 50')}">
                                        <span class="price-dec">50% Off</span>
                                    </c:if>
                                    <c:if test="${p.title.equals('new')}">
                                        <span class="new">new</span>
                                    </c:if>
                                    <c:if test="${p.title.equals('hot')}">
                                        <span class="out-of-stock">hot</span>
                                    </c:if>

                                </a>
                                <div class="button-head">
                                    <div class="product-action">
                                        <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                        <a title="Wishlist" href="/product/${p.id}"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                        <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
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
                                    <span>${p.price} vnd</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ End Product Style 1  -->
<!-- Start Footer Area -->
<jsp:include page="../../include/footer.jsp" />
<!-- /End Footer Area -->
<jsp:include page="../../include/js.jsp" />
</body>
</html>