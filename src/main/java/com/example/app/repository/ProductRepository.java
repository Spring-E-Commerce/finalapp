package com.example.app.repository;

import com.example.app.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<Product , Integer> {
    @Query("select p from Product p where p.id = :id ")
    public Product findOne(@Param("id") int id);
    @Query("select p from Product p where p.category.id = :category_id")
    public List<Product> searchProductByCategory(@Param("category_id") int category_id);

}
