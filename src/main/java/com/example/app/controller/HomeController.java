package com.example.app.controller;

import com.example.app.entity.Customer;
import com.example.app.entity.RoleEntity;
import com.example.app.entity.UserEntity;
import com.example.app.service.CategoryService;
import com.example.app.service.CustomerService;
import com.example.app.service.ProductService;
import com.example.app.service.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class HomeController {
    @Autowired
    ProductService productService ;

    @Autowired
    CategoryService categoryService;
    @Autowired
    CustomerService customerService ;
    @Autowired
    UserServices userServices ;
    @Autowired
    ServletContext context ;
    @RequestMapping("/")
    public String getList(Model model){
        model.addAttribute("product" , productService.getList());
        model.addAttribute("category" , categoryService.getCategory());
        return "index";

    }

    @RequestMapping("/admin")
    public String admin(Model model){
        model.addAttribute("admin_P" , productService.getList());
        model.addAttribute("category" , categoryService.getCategory());
        return "admin";
    }
    @RequestMapping("/customer")
    public String customer(Authentication authentication , Model model){
        String userNameLogined = authentication.getName();
        Customer customer = customerService.getCustomerByUserName(userNameLogined) ;
        model.addAttribute("customer" , customer) ;
        return "Customer" ;
    }

    @RequestMapping("/shop")
    public String shop(Model model){
        model.addAttribute("product" , productService.getList());
        model.addAttribute("category" , categoryService.getCategory());
        return "shop";
    }
    @GetMapping("/login")
    public String loginPages(){
        return "login" ;
    }
    @RequestMapping("/403")
    public String FPages(){
        return "403" ;
    }

    @RequestMapping("/SignUp")
    public String registerPages(Model model){
        model.addAttribute("customer" , new Customer()) ;
        return "SignUp";
    }

    @RequestMapping(value = "/registration" , method = RequestMethod.POST)
    public String registration(@RequestParam("fileImage") MultipartFile photo,
                               @RequestParam("username") String username ,
                               @RequestParam("password")String password , Customer customer , Model model){
        List<Customer> customers = customerService.getCustomers() ;
        for(Customer cs : customers){
            if(customer.getEmail().equals(cs.getEmail())){
                model.addAttribute("type" , "fail");
                model.addAttribute("message" , "This email is already registered for an account!");
                return "SignUp" ;
            }
        }
        try {
            Set<RoleEntity> roles = new HashSet<>() ;
            roles.add(userServices.getRoleByName("USER"));
            UserEntity userEntity = new UserEntity(username , password, roles) ;
            userServices.addUser(userEntity);
            customer.setUserEntity(userEntity);
            String photoPath = context.getRealPath("/images/user/" + photo.getOriginalFilename());
            photo.transferTo(new File(photoPath));
            customer.setBrandLogo(photo.getOriginalFilename());
            customerService.adCustomer(customer);
            model.addAttribute("type" , "success");
            model.addAttribute("message" , "Registration Success!");

        }catch (Exception e){
            model.addAttribute("message" , "ERROR file save!") ;
        }

        return "login" ;
    }

}
