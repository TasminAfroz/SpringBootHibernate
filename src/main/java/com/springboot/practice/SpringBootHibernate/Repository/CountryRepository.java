package com.springboot.practice.SpringBootHibernate.Repository;

import org.springframework.data.repository.CrudRepository;

import com.springboot.practice.SpringBootHibernate.Model.Country;

public interface CountryRepository extends CrudRepository<Country, Long> {
	
	

}
