package com.example.app.repository;

import com.example.app.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product , Integer> {
    @Query("select p from Product p where p.id = :id ")
    public Product findOne(@Param("id") int id);
    @Query("SELECT p FROM Product p WHERE CONCAT(p.name, p.title, p.price) LIKE %?1%")
    public List<Product> search( String keyword);

}
