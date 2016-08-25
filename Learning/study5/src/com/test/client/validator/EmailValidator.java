package com.test.client.validator;

import com.smartgwt.client.widgets.form.validator.CustomValidator;

public class EmailValidator extends CustomValidator{
	
	
	
	public EmailValidator(){
		this.setErrorMessage("Email输入格式不正确，请重新输入，例如：example@163.com");
	}
	
	

	@Override
	protected boolean condition(Object value) {
		
		String valueStr = (String) value;				
		return valueStr == null ? false : valueStr.matches("^([a-zA-Z0-9_.\\-+])+@(([a-zA-Z0-9\\-])+\\.)+[a-zA-Z0-9]{2,4}$");		
	
	}

}
