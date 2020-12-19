package com.example.app.service;

import com.example.app.entity.Product;
import com.example.app.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;

    public List<Product> getList(){
        return (List<Product>) productRepository.findAll();
    }

    public void add(Product product){
        productRepository.save(product);
    }
    public void delete(int id){
        productRepository.deleteById(id);
    }
    public Product getProduct(int id){
      return   productRepository.findOne(id);
    }
    /*public List<Product> search(String keyword){
        if(keyword != null){
            return productRepository.search(keyword);
        }
         return productRepository.findAll();
    }*/
    public List<Product> search(int category_id){
        return productRepository.searchProductByCategory(category_id);
    }

}
