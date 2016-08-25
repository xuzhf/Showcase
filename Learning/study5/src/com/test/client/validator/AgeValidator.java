package com.test.client.validator;

import com.smartgwt.client.widgets.form.validator.CustomValidator;

public class AgeValidator extends CustomValidator{
	
	
	public AgeValidator(){
		this.setErrorMessage("只能输入 0---120的正整数");
	}
	
	@Override
	protected boolean condition(Object value) {
			
		Integer valueStr;
		
		try {
			valueStr = (Integer) value;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			
		}	
		
		if ( null == valueStr  ||    valueStr < 1 || valueStr > 120 )   {
			return false;
		}
		
		return true;
		
	}

}
