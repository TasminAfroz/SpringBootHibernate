package com.springboot.practice.SpringBootHibernate.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name = "categories")
public class Category {
	@Id
	@Column(name = "category_id")
	private int id;
	@Column(name = "category_name")
	private String categoryName;
	@Column(name = "parent_id")
	private String parentId;
	@Column(name = "image")
	private String image;
	
	
	
	
	
	
	
}
