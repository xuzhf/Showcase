package com.test.client;  

import com.google.gwt.json.client.JSONArray;
import com.smartgwt.client.data.DSRequest;
import com.smartgwt.client.data.DSResponse;
import com.smartgwt.client.data.DataSource;
import com.smartgwt.client.data.XMLTools;
import com.smartgwt.client.data.fields.DataSourceIntegerField;
import com.smartgwt.client.data.fields.DataSourceTextField;
import com.smartgwt.client.rpc.RPCResponse;
import com.smartgwt.client.types.DSDataFormat;
import com.smartgwt.client.util.SC;
import com.smartgwt.client.widgets.form.validator.IntegerRangeValidator;
import com.smartgwt.client.widgets.form.validator.RegExpValidator;



public class EmployeeXmlDS extends DataSource {  
	
	
	
  
 @Override  
 protected void transformResponse(DSResponse response, DSRequest request, Object jsonData) {  
     
	 try {
		 
			 JSONArray value = XMLTools.selectObjects(jsonData, "/response/status");  
			 
			 if (  null != value  &&  value.size()> 0 ) {
			     String status = value.get(0).isString().stringValue(); 			     		 
				     if(!status.equals("success")) {  
				         response.setStatus(RPCResponse.STATUS_VALIDATION_ERROR);  
				         JSONArray errors = XMLTools.selectObjects(jsonData, "/response/errors");  
				         if(errors.size() > 0 ){
				        	 response.setErrors(errors.getJavaScriptObject());  
				         }
			//	         return ;
				     }  
			 }
			 
			try {
				//打印警告信息
				
				String warnmessage = XMLTools.selectObjects(jsonData, "/response/message").get(0).isString().stringValue();
			//	System.out.println(" warnmessage =" + warnmessage);
				if (warnmessage != null && warnmessage.length() > 0) {
					SC.say(warnmessage);
					return;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}					 
	
	 }catch(Exception e){
		 e.printStackTrace();
	 }
 }  
		
	

	private static EmployeeXmlDS instance = null;  
  
    public static EmployeeXmlDS getInstance() {  
        if (instance == null) {  
            instance = new EmployeeXmlDS("employeesDS");  
        }  
        return instance;  
    }  
  
    public EmployeeXmlDS(String id) {  
    	
  
                
        setID(id);  
        
   
        setDataFormat(DSDataFormat.JSON);
        
        setDataURL(Constant.INFO_LIST);    
        

       
        // 主键
        DataSourceIntegerField userIdField = new DataSourceIntegerField("userId","UserId", 20, true);
        
        userIdField.setCanEdit(false);
        userIdField.setPrimaryKey(true);  
        userIdField.setRequired(false);

    
        
        
        // 外键
        DataSourceIntegerField parentIdField = new DataSourceIntegerField("parentId","ParentId", 20, true);
        parentIdField.setForeignKey("userId");  
        parentIdField.setRootValue("0"); 
        
        
        
        // UserName   字符串的长度验证     : -------字符串长度大于6 和 字符串只能为字母、数字和下划线
        RegExpValidator stringValidator = new RegExpValidator();  
        stringValidator.setExpression("^[0-9a-zA-z_]{6,}$");  
        stringValidator.setErrorMessage("长度大于6 和 字符串只能为字母、数字和下划线");
        
        DataSourceTextField userNameField = new DataSourceTextField("userName", "Username", 30, true);  
      //  userNameField.setValidators(stringValidator);   
        
        
        
        // Age -------------一个数字验证-------------------
        IntegerRangeValidator integerRangeValidator = new IntegerRangeValidator();  
        integerRangeValidator.setMin(1);  
        integerRangeValidator.setMax(100); 
        
        DataSourceIntegerField ageField = new DataSourceIntegerField("age","Age", 20, true);
//       ageField.setValidators(integerRangeValidator);
        
        
        
           
        // email 采用正则表达式做客户端校验

          RegExpValidator emailValidator = new RegExpValidator();  
          emailValidator.setExpression("^([a-zA-Z0-9_.\\-+])+@(([a-zA-Z0-9\\-])+\\.)+[a-zA-Z0-9]{2,4}$");  
           
         DataSourceTextField emailField = new DataSourceTextField("email");  
         emailField.setRequired(true);
         emailField.setTitle("Email");  
         emailField.setLength(100);
     //    emailField.setValidators(emailValidator);  
         
         
//       url 采用正则表达式的客户端校验

        RegExpValidator urlValidator = new RegExpValidator();  
        urlValidator.setExpression("^[a-zA-z]+://(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*(\\?\\S*)?$");  
        
        DataSourceTextField urlField = new DataSourceTextField("url", "Url", 100, true);  
 //       urlField.setValidators(urlValidator);  
        
         
        setFields(userIdField, parentIdField , userNameField,  emailField, ageField , urlField);  
        
        setTitleField("Name"); 
        
    }  
}  
