package com.class_objects;
class car{
	String brand;
	int year;
	
	public void display() {
		System.out.println("brand:"+brand);
		System.out.println("year:"+year);
	}
}

public class Classobject {
	public static void main(String[] args) {
		car obj1=new car();
		obj1.brand="tesla";
		obj1.year=2017;
		obj1.display();
		
		car obj2=new car();
		obj2.brand="maruthi";
		obj2.year=2022;
		obj2.display(); 
	}

}
