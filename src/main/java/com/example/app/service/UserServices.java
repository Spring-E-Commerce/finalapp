package com.example.app.service;

import com.example.app.entity.RoleEntity;
import com.example.app.entity.UserEntity;
import com.example.app.repository.RoleRepository;
import com.example.app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class UserServices {
    @Autowired
    RoleRepository roleRepository ;
    @Autowired
    UserRepository userRepository ;


    public void addUser(UserEntity userEntity){
        userEntity.setEnable(1);
        userRepository.save(userEntity) ;
    }

    public List<UserEntity> getUsers (){
        return (List<UserEntity>) userRepository.findAll() ;
    }
    public RoleEntity getRoleByName(String name){
        return roleRepository.getRoleEntityByName(name);
    }

}
