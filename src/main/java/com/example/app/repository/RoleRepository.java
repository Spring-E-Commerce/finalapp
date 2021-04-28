package com.example.app.repository;


import com.example.app.entity.RoleEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<RoleEntity, Integer> {
    public RoleEntity getRoleEntityByName(String name);
}
