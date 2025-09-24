package com.datatype;

import java.util.Scanner;

public class useInput {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int userInput;
		System.out.println("enter a number:");
		userInput = sc.nextInt();
		System.out.println("you entered value is:"+userInput);
		
		long marks;
		marks = sc.nextLong();
		System.out.println("your marks:"+marks);
		
		
		sc.close();
		
	}
}
