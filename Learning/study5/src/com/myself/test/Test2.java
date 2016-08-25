package com.myself.test;

public class Test2 {

	public static void main(String[] args) {
		
		String para =  "dfdd";		
		System.out.println(new Test2().test(para));
	
	}
	
	public boolean test( Object test){
		
		String result = (String)test;
		
		try {
			Integer.parseInt(result);
			return true;
			
		} catch (NumberFormatException e) {
			
			//e.printStackTrace();
			return false;
		}
		
		
	}
	

}
