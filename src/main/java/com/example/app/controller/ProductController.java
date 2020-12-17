package com.example.app.controller;

import com.example.app.entity.Product;
import com.example.app.service.CategoryService;
import com.example.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductService productService ;

    @Autowired
    CategoryService categoryService;

    @RequestMapping("/")
    public String getList(Model model){
        model.addAttribute("product" , productService.getList());
        model.addAttribute("category" , categoryService.getCategory());
        return "index";

    }

    @RequestMapping("/admin")
    public String admin(Model model){
        model.addAttribute("admin_P" , productService.getList());
        return "admin" ;
    }
    @RequestMapping("/shop")
    public String shop(Model model){
        model.addAttribute("product" , productService.getList());
        return "shop";
    }
    @RequestMapping("/addForm")
    public String form(Model model){
        model.addAttribute("product" , new Product());
        return "form";
    }
    @RequestMapping(value = "/add" , method = RequestMethod.POST)
    public String add(Product product){
        productService.add(product );
        return "redirect:/admin" ;
    }
    @RequestMapping(value = "/delete" , method = RequestMethod.GET)
    public String delete(@RequestParam("id") int id){
        productService.delete(id);
        return "redirect:/admin" ;
    }
    @RequestMapping(value = "/update" )
    public String edit(@RequestParam("id") int id , Model model){
        Product product = productService.getProduct(id) ;
        model.addAttribute("product" , product);
        model.addAttribute("type" , "update");
        return "form" ;
    }
    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public String viewPage(@Param("keyword") String keyword , Model model){
        List<Product> products = productService.search(keyword) ;
        model.addAttribute("admin_P" , products);
        return "admin" ;
    }
}
