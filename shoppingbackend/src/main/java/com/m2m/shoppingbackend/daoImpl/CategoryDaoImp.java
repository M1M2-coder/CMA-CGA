package com.m2m.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.m2m.shoppingbackend.dao.CategoryDAO;
import com.m2m.shoppingbackend.dto.Category;


@Repository("categoryDAO")
public class CategoryDaoImp implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	static {
		//Add First Category.
		Category category = new Category();
		category.setId(1);
		category.setName("Mobile");
		category.setDescription("All What You Want To Know About Mobiles");
		category.setImageURl("CAT_1.png");
		
		categories.add(category);
		
		//Add Second Category.
		category = new Category();
		category.setId(2);
		category.setName("Television");
		category.setDescription("All What You Want To Know About Televisions");
		category.setImageURl("CAT_2.png");
		
		categories.add(category);
		//Add Second Category.
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("All What You Want To Know About Laptops");
		category.setImageURl("CAT_2.png");
		categories.add(category);
	}


	public Category get(int id) {
		for(Category category: categories) {
			if(category.getId() == id) return category;
		}
		return null;
	}	
	
	
	public List<Category> list() {
		
		return categories;
	}


}
