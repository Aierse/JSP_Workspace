package com.dto;

public class Product {
	private String productId;		//상품 아이디
	private String pname;			//상품명
	private Integer unitPrice;		//상품 가격
	private String description;		//상품 설명
	private String manufacturer;	//제조사
	private String category;		//분류
	private long UnitInStock;		//재고 수
	private String condition;		//신상품 또는 중고품
	private String filename;		//이미지 파일명
	private int quantity;			//장바구니에 담은 갯수
	
	public Product() {
		super();
	}
	
	public Product(String productId, String pname, Integer unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	
	public static String IntegerToComma(Integer unitPrice) {
		return String.format("%,d", unitPrice);
	}

	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public String getUnitPriceToComma() {
		return String.format("%,d", this.getUnitPrice());
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitInStock() {
		return UnitInStock;
	}

	public void setUnitInStock(long unitInStock) {
		this.UnitInStock = unitInStock;
	}
	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
