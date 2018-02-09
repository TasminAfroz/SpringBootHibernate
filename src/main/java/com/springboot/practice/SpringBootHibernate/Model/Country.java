package com.springboot.practice.SpringBootHibernate.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "countries")
public class Country {
	
	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "country_id")
	private int countryId;
	@Column(name = "country_code")
	private String countryCode;
	
	@Column(name = "country_name")
	private String countryName;
	public int getCountryId() {
		return countryId;
	}
	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
}
