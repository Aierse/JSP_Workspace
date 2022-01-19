package com.dto;

import java.util.ArrayList;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		Product zFlip = new Product("P1237", "Galaxy Z Flip" , 1200000);
		zFlip.setDescription("6.7-inch, LTPO 120Hz display, 스냅드래곤 888 processer");
		zFlip.setCategory("Smart Phone");
		zFlip.setManufacturer("Samsung");
		zFlip.setUnitInStock(1000);
		zFlip.setCondition("new");
		zFlip.setFilename("P1237.png");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		listOfProducts.add(zFlip);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		for (Product p : listOfProducts) {
			if (p.getProductId().equals(productId))
				return p;
		}
		
		return null;
	}
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product p) {
		listOfProducts.add(p);
	}
}