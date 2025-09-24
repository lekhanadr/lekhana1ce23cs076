package com.polymorphism;
 class Addition{
	 public void add(int a ,int b) {
		 System.out.println(a+b);
	 }
	 public void add(double a ,double b) {
		 System.out.println(a+b);
	 }
 }
public class Methodoverloading {
	public static void main(String[] args) {
		Addition a1= new Addition();
		a1.add(10,20);
		a1.add(10.3,15.5 );
	}

}
