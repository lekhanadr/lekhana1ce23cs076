package com.ListInterface;


import java.util.ArrayList;
import java.util.List;

public class listinterface {
	public static void main(String[] args) {
		List list =new ArrayList();
		list.add(12);
		list.add(12.0);
		list.add("hello");
		list.add(12);
		list.add(12);
		System.out.println(list);
		
		
		Object object=list.get(0);
		Integer firstValue=(Integer)object;
		System.out.println(firstValue);
		
		 String name=(String)list.get(2);
		System.out.println(name);
		
		System.out.println("*********************************");
		List<Integer> integers=new ArrayList<Integer>();
		integers.add(120);
		integers.add(130);
		System.out.println(integers);
		
		Integer integer = integers.get(1);
		System.out.println(integer);
		
	}

}
