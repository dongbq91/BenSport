package com.bensport.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bensport.entity.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Integer>{

}
