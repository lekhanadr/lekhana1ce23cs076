package com.exception;

import java.util.Scanner;


public class DivisonNumber {
	public static void main(String[] args) {
		System.out.println("progrem start");
		Scanner sc= new Scanner(System.in);
		System.out.println("enter a two number");
		int num1=sc.nextInt();
		int num2=sc.nextInt();
		int res=0;
		try {
			 res=num1/num2;
		}catch(ArithmeticException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("resut is: "+res);
		
		System.out.println("program completed");
	}

}
