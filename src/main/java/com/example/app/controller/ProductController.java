package com.example.app.controller;

import com.example.app.entity.Category;
import com.example.app.entity.Product;
import com.example.app.service.CategoryService;
import com.example.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
    ProductService productService ;

    @Autowired
    CategoryService categoryService;

    @Autowired
    ServletContext context ;

    @RequestMapping("/addForm")
    public String form(Model model){
        List<Category> categories = categoryService.getCategory();
        Map<Integer ,String> categoryMap =new HashMap<>();

        for(Category c : categories){
            categoryMap.put(c.getId() , c.getName());
        }
        model.addAttribute("categoryMap" , categoryMap);
        model.addAttribute("product" , new Product());
        return "form";
    }
    @RequestMapping(value = "/add" , method = RequestMethod.POST)
    public String add(Product product , @RequestParam("fileImage") MultipartFile photo , ModelMap model){

            try {
                String photoPath = context.getRealPath("/images/product/" + photo.getOriginalFilename());
                photo.transferTo(new File(photoPath));
                product.setImage(photo.getOriginalFilename());
                productService.add(product);
            }catch (Exception e){
                model.addAttribute("message" , "Loi luu Files");
            }

        return "redirect:/admin";
    }
    @RequestMapping(value = "/delete" , method = RequestMethod.GET)
    public String delete(@RequestParam("id") int id){
        productService.delete(id);
        return "redirect:/admin";
    }
    @RequestMapping(value = "/update" )
    public String edit(@RequestParam("id") int id , Model model){
        Product product = productService.getProduct(id) ;
        model.addAttribute("product" , product);
        List<Category> categories = categoryService.getCategory();
        Map<Integer , String>  categoryMap = new HashMap<>();
        for(Category c : categories){
            categoryMap.put(c.getId(), c.getName());
        }
        model.addAttribute("categoryMap" , categoryMap);
        model.addAttribute("type" , "update");
        return "form" ;
    }
    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public String viewPage(@Param("category_id") int category_id , Model model){
        List<Product> products = productService.search(category_id) ;
        model.addAttribute("admin_P" , products);
        List<Category> categories = categoryService.getCategory();
        model.addAttribute("category" , categories);

        return "admin";
    }

    @RequestMapping("/product/{id}")
    public String product(@PathVariable("id") int id , Model model){
        model.addAttribute("detail" , productService.getProduct(id));
        return "product_detail" ;
    }
    @RequestMapping("/cart")
    public String Cart(Model model){
        return "cart";
    }
}
