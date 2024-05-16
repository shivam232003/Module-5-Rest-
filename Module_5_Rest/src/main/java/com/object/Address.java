package com.object;

public class Address {
	
	private String addressInfo;

	

	public Address(String addressInfo) {
		super();
		this.addressInfo = addressInfo;
	}



	@Override
	public String toString() {
		return "Address [addressInfo=" + addressInfo + "]";
	}
	
	
}
