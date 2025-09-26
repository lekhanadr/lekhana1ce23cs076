package com.constructors;

class grandparent{

	public grandparent() {
		System.out.println("grandparent constracteor");
	}
}
class person extends grandparent{
	int parent_id = 20;
	public person() {
		super();
		System.out.println("person constructeor");
	}
	
}

class student extends person{
	public int id;
	public String name;
	public student(int id, String name) {
		this.id = id;
		this.name = name;
	}
	public student(int id) {
		super();
		System.out.println(super.parent_id);
		this.id = id;
	}
	
}
public class ConstructorInJava {
	public static void main(String[] args) {
		student s1= new student( 101,"lekhu");
		student s2= new student(102);
		System.out.println("first name");
		System.out.println("id:"+s1.id);
		System.out.println("name:"+s1.name);
		
		System.out.println("second name");
		System.out.println("id:"+s2.id);
		System.out.println("name:"+s2.name);
	}

}