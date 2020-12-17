package com.example.app.service;

import com.example.app.entity.Category;
import com.example.app.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository ;

    public List<Category> getCategory(){
        return (List<Category>) categoryRepository.findAll();
    }
}
