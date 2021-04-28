package com.example.app.service;

import com.example.app.entity.Customer;
import com.example.app.entity.UserEntity;
import com.example.app.repository.CustomerRepository;
import com.example.app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    CustomerRepository customerRepository ;

    @Autowired
    UserRepository userRepository ;

    public void adCustomer(Customer customer){
        customerRepository.save(customer) ;
    }
    public List<Customer> getCustomers(){
        return (List<Customer>) customerRepository.findAll();
    }
    public Customer getCustomerByUserName(String username){
        UserEntity userEntity = userRepository.findByUsername(username) ;
        return customerRepository.findById(userEntity.getCustomer().getId()).get() ;
    }
}
