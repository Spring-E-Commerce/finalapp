package com.example.app.repository;

import com.example.app.entity.UserEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<UserEntity , Integer> {
    public UserEntity findByUsername(String username) ;
}
