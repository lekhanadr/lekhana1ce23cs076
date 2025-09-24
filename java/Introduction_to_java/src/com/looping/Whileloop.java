package com.looping;

import java.util.Scanner;

public class Whileloop {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter a number:");
		int size = sc.nextInt();
		if(size <=0) {
			System.out.println("invalid number");
		}
		while (size<5) {
			System.out.println(size);
			size++;
		}
	}
	

}
