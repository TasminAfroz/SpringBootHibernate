package com.springboot.practice.SpringBootHibernate.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name = "categories")
public class Category {
	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "category_id")
	private int id;
	@Column(name = "category_name")
	private String categoryName;
	@Column(name = "parent_id")
	private String parentId;
	@Column(name = "image")
	private String image;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	@Override
	public String toString() {
		return "Category [id=" + id + ", categoryName=" + categoryName + ", parentId=" + parentId + ", image=" + image
				+ "]";
	}
	
	
	
}
