package com.example.app.controller;

import com.example.app.entity.Product;
import com.example.app.model.Cart;
import com.example.app.model.CartManger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartManger cartManger ;


    @RequestMapping("/add" )
    public String add(HttpSession session , @RequestParam("id") Product product ,
                      @RequestParam(value = "qty" , required = true , defaultValue = "1") int qty)
    {
        Cart cart = cartManger.getCart(session);
        cart.addItem(product , qty);
        return "cart" ;
    }

    @RequestMapping("/remove")
    public String remove(HttpSession session , @RequestParam("id") Product product){
        Cart cart = cartManger.getCart(session);
        cart.removeItem(product);
        return "cart";
    }

    @RequestMapping("/update")
    public String update(HttpSession session , @RequestParam("id") Product product,
                         @RequestParam("qty") int qty )
    {
        Cart cart = cartManger.getCart(session);
        cart.updateItem(product , qty);
        return "cart" ;
    }
}
