package com.conditionalstatement;
import java.util.Scanner;
public class Oddeven {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int x;
		System.out.println("enter a number:");
		x = sc.nextInt();
		if(x==0) {
			System.out.println("the give number:"+x+"is zero");
			
		}
		else if(x<0) {
			System.out.println("the give number:"+x+"is -ve");
			
		}
		else if(x%2==0) {
			System.out.println("the give number:"+x+"is even");		
		}
		else {
			System.out.println("the give number:"+x+"is odd");
		}
		sc.close();
	}
}
