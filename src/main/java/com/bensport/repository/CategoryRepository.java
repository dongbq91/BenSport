package com.bensport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bensport.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
