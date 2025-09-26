package com.abstraction;

abstract class shape {
	abstract void draw() ;
	public void display() {
		System.out.println("this is display function");
		
	}
}
class Circle extends shape{

	@Override
	void draw() {
		// TODO Auto-generated method stub
		System.out.println("This is shape draw method");
	}	
}
public class Abstractclass {
	public static void main(String[] args) {
		Circle circle = new Circle();
		circle.draw();
		circle.display();
	}

}
