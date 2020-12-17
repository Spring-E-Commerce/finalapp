package com.example.app.repository;

import com.example.app.entity.Category;
import com.example.app.entity.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends CrudRepository<Category , Integer>  {
}
