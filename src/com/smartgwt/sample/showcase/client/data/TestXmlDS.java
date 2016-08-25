package com.smartgwt.sample.showcase.client.data;

import com.google.gwt.json.client.JSONArray;
import com.smartgwt.client.data.DSRequest;
import com.smartgwt.client.data.DSResponse;
import com.smartgwt.client.data.DataSource;
import com.smartgwt.client.data.XMLTools;
import com.smartgwt.client.data.fields.DataSourceIntegerField;
import com.smartgwt.client.data.fields.DataSourceTextField;
import com.smartgwt.client.rpc.HandleErrorCallback;
import com.smartgwt.client.rpc.RPCManager;
import com.smartgwt.client.rpc.RPCResponse;
import com.smartgwt.client.types.DSDataFormat;
import com.smartgwt.client.util.SC;
import com.smartgwt.sample.showcase.client.Constant;

public class TestXmlDS extends DataSource {

	
	@Override
	protected void transformResponse(DSResponse response, DSRequest request, Object jsonData) {

		try {

			JSONArray value = XMLTools.selectObjects(jsonData, "/response/status");

			if (null != value && value.size() > 0) {
				String status = value.get(0).isString().stringValue();
				if (!status.equals("success")) {
					response.setStatus(RPCResponse.STATUS_VALIDATION_ERROR);
					JSONArray errors = XMLTools.selectObjects(jsonData, "/response/errors");
					if (errors.size() > 0) {
						response.setErrors(errors.getJavaScriptObject());
					}
					// return ;
				}
			}

			try {
				// 打印警告信息

				String warnmessage = XMLTools.selectObjects(jsonData, "/response/message").get(0).isString()
						.stringValue();
				 System.out.println(" warnmessage =" + warnmessage);
				if (warnmessage != null && warnmessage.length() > 0) {
					SC.say(warnmessage+"111");
					return;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static TestXmlDS instance = null;

	public static TestXmlDS getInstance() {
		if (instance == null) {
			instance = new TestXmlDS("testXmlDS");
		}
		return instance;
	}

	public TestXmlDS(String id) {

		setID(id);

		setDataFormat(DSDataFormat.JSON);

		setDataURL(Constant.INFO_LIST);

		// 主键
		DataSourceIntegerField userIdField = new DataSourceIntegerField("userId", "UserId", 20, true);
		userIdField.setCanEdit(false);
		userIdField.setPrimaryKey(true);
		userIdField.setRequired(false);

		// 外键
		DataSourceIntegerField parentIdField = new DataSourceIntegerField("parentId", "ParentId", 20, true);
		parentIdField.setForeignKey("userId");
		parentIdField.setRootValue("0");

		DataSourceTextField userNameField = new DataSourceTextField("userName", "Username", 30, true);

		DataSourceIntegerField ageField = new DataSourceIntegerField("age", "Age", 20, true);
		// ageField.setValidators(integerRangeValidator);

		DataSourceTextField emailField = new DataSourceTextField("email");
		emailField.setRequired(true);
		emailField.setTitle("Email");
		emailField.setLength(100);
		// emailField.setValidators(emailValidator);

		// url 采用正则表达式的客户端校验

		DataSourceTextField urlField = new DataSourceTextField("url", "Url", 100, true);
		// urlField.setValidators(urlValidator);

		setFields(userIdField, parentIdField, userNameField, emailField, ageField, urlField);

		setTitleField("Name");
		
		RPCManager.setHandleErrorCallback(new HandleErrorCallback() {

			@Override
			public void handleError(DSResponse response, DSRequest request) {
				// TODO Auto-generated method stub
		        System.err.println("Transaction number: ");
		        System.err.println("Status: ");
		        System.err.println("Response code: ");
		        System.err.println("Response text:");

		        SC.warn("You have no internet connection.");
			}
		    });

	}
}