<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 4/28/2021
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
    <jsp:include page="../../include/css.jsp" />
</head>
<body>
<jsp:include page="../../include/header.jsp" />
<br>
<table class="table shopping-summery">
    <thead>
    <tr class="main-hading">
        <th>PRODUCT</th>
        <th>NAME</th>
        <th class="text-center">UNIT PRICE</th>
        <th class="text-center">QUANTITY</th>
        <th class="text-center">TOTAL</th>
        <th class="text-center"><i class="ti-trash remove-icon"></i></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${sessionScope.gioHang.items}">
        <tr>
            <td class="image" data-title="No"><img src="/images/product/${p.product.image}" width="100" height="100" alt="#"></td>
            <td class="product-des" data-title="Description">
                <p class="product-name"><a href="#">${p.product.name}</a></p>
                <p class="product-des">${p.product.description}</p>
            </td>
            <td class="price" data-title="Price"><span>${p.product.price} </span></td>
            <td class="qty" data-title="Qty"><!-- Input Order -->
                <div class="input-group">
                    <form action="/cart/update">
                        <input type="hidden" value="${p.product.id}" name="id">
                        <input type="number" name="qty" class="input-number"  min="1" max="100" value="${p.quantity}">
                        <button type="submit" class=" btn-warning" style="margin-right: auto"><i class="far fa-edit"></i></button>
                    </form>
                </div>
                <!--/ End Input Order -->
            </td>
            <td class="total-amount" data-title="Total"><span>${p.subTotal}</span></td>

            <td class="action" data-title="Remove">
                <form action="/cart/remove">
                    <input type="hidden" value="${p.product.id}" name="id">
                    <button type="submit" class="btn-danger"><i class="ti-trash remove-icon"></i></button>
                </form>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
