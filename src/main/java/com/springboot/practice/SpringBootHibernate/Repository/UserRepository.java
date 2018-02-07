package com.springboot.practice.SpringBootHibernate.Repository;

import org.springframework.data.repository.CrudRepository;

import com.springboot.practice.SpringBootHibernate.Model.User;

public interface UserRepository extends CrudRepository<User, Long>{
	User findByEmail(String email);

}
