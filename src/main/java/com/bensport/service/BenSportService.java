package com.bensport.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.bensport.entity.Customer;
import com.bensport.repository.CustomerRepository;

@Service
public class BenSportService implements UserDetailsService {

	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Override
	public UserDetails loadUserByUsername(String customerId) throws UsernameNotFoundException {
		Optional<Customer> customer = Optional.ofNullable(customerRepository.findCustomersLogin(customerId));
		final Customer customerLogin = new Customer();
		customerLogin.setEnabled(customer.get().getEnabled());
		customerLogin.setCustomerId(customer.get().getCustomerId());
		customerLogin.setEmail(customer.get().getEmail());
		customerLogin.setPassword(customer.get().getPassword());
		customerLogin.setFullname(customer.get().getFullname());
		customerLogin.setRoleId(customer.get().getRoleId());
		return customerLogin;
	}

	
}
