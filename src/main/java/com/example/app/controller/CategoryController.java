package com.example.app.controller;

import com.example.app.entity.Category;
import com.example.app.entity.Product;
import com.example.app.service.CategoryService;
import com.example.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CategoryController {

    @Autowired
    ProductService productService ;

    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/category/{category_id}" , method = RequestMethod.GET)
    public String shop(@PathVariable("category_id") int category_id , Model model){
        List<Product> products = productService.search(category_id) ;
        model.addAttribute("product" , products);
        List<Category> categories = categoryService.getCategory();
        model.addAttribute("category" , categories);

        return "shop";
    }
}
