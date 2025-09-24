package com.inheritence;

class Animal{
	public void eat() {
		System.out.println("Animal eating");
	}
}
class Dog extends Animal{
	@Override
	public void eat() {
		System.out.println("Dog is eating");
	}
	public void isWalking() {
	System.out.println("Dog is walking");
	}
}
public class Inheritence1 {
	public static void main(String[] args) {
		Dog d1 = new Dog();
		d1.eat();
		d1.isWalking();
	}

}
