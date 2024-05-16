package com.object;

public class Employee {
	
	private Address address;

	

	public Employee(Address address) {
		super();
		this.address = address;
	}

	@Override
	public String toString() {
		return "Employee [address=" + address + "]";
	}
	
	
	
}	
