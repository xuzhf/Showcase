package com.test.client.validator;

import com.smartgwt.client.widgets.form.validator.CustomValidator;

public class UserNamelValidator extends CustomValidator{
	
	
	public UserNamelValidator(){
		this.setErrorMessage("用户名不可以为空，或者空格，请重新输入");
	}

	@Override
	protected boolean condition(Object value) {
		
		String valueStr = (String )value;
		
		if ( null == valueStr || valueStr.trim().length() <= 0 ) {
			System.out.println("===========");
			return false;
		}
		
		return true;
	}

}
