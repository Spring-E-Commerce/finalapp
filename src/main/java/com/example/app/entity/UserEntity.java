package com.example.app.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String username;
    private String password ;
    private int enable ;

    @ManyToMany(fetch = FetchType.LAZY , cascade = CascadeType.ALL)
    @JoinTable(name = "user_role" , joinColumns = {@JoinColumn(name = "user_id")}
               ,inverseJoinColumns = {@JoinColumn(name = "role_id")})
    private Set<RoleEntity> userRoleEntity ;

    @OneToOne(mappedBy = "userEntity")
    private Customer customer ;

    public UserEntity() {
    }

    public UserEntity(String username, String password, Set<RoleEntity> roleEntities) {
        this.username = username;
        this.password = password;
        this.userRoleEntity = roleEntities;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    public Set<RoleEntity> getUserRoleEntity() {
        return userRoleEntity;
    }

    public void setUserRoleEntity(Set<RoleEntity> userRoleEntity) {
        this.userRoleEntity = userRoleEntity;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
