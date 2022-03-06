package com.bensport.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.bensport.entity.CartItem;
import com.bensport.entity.Product;

@Service
public interface ShoppingCartService {

	int getCount();

	double getAmount();

	void clear();
	
	Collection<CartItem> getCartItems();

	void remove(CartItem item);

	void add(CartItem item);

	void remove(Product product);
}
