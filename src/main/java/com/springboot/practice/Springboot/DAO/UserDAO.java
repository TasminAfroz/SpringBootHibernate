package com.springboot.practice.Springboot.DAO;

import org.springframework.data.repository.CrudRepository;

import com.springboot.practice.SpringBootHibernate.Model.User;

public interface UserDAO extends CrudRepository<User, Long>{

}
