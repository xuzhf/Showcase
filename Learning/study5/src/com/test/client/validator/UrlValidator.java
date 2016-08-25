package com.test.client.validator;

import com.smartgwt.client.widgets.form.validator.CustomValidator;

public class UrlValidator extends CustomValidator{
	
	
	public UrlValidator(){
		setErrorMessage("网址输入不正确，请重新输入，例如：http://www.google.com");
	}
	
	

	@Override
	protected boolean condition(Object value) {
		
		String valueStr = (String) value;		
		return valueStr == null ? false : valueStr.matches("^[a-zA-z]+://(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*(\\?\\S*)?$");		
	
	}

}
