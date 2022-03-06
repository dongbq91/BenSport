package com.bensport.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bensport.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String>{

	@Query(value = "select * from customers where customerId = ?", nativeQuery = true)
    public Customer findCustomersLogin (String customerId);
	
	@Query(value = "select * from customers where email = ?", nativeQuery = true)
	Optional<Customer> findByEmail(String email);
}
