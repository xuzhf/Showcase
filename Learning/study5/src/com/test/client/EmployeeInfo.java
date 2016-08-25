package com.test.client;


import com.google.gwt.core.client.EntryPoint;
import com.smartgwt.client.data.DataSource;
import com.smartgwt.client.types.Alignment;
import com.smartgwt.client.types.VerticalAlignment;
import com.smartgwt.client.widgets.IButton;
import com.smartgwt.client.widgets.events.ClickEvent;
import com.smartgwt.client.widgets.events.ClickHandler;
import com.smartgwt.client.widgets.form.DynamicForm;
import com.smartgwt.client.widgets.form.fields.IntegerItem;
import com.smartgwt.client.widgets.form.fields.TextItem;
import com.smartgwt.client.widgets.grid.events.RecordClickEvent;
import com.smartgwt.client.widgets.grid.events.RecordClickHandler;
import com.smartgwt.client.widgets.layout.HLayout;
import com.smartgwt.client.widgets.layout.VLayout;
import com.smartgwt.client.widgets.tree.TreeGrid;
import com.smartgwt.client.widgets.tree.TreeGridField;
import com.test.client.validator.AgeValidator;
import com.test.client.validator.EmailValidator;
import com.test.client.validator.UrlValidator;
import com.test.client.validator.UserNamelValidator;


public class EmployeeInfo implements EntryPoint {

	private TreeGrid employeeTree;
	private DynamicForm form;
	
	
	public EmployeeInfo(){
		
	}
	
	
	/**
	 * This is the entry point method.
	 */
	public void onModuleLoad() {
		VLayout editor = createEditor(EmployeeXmlDS.getInstance());
//		VLayout editor = createEditor();
		employeeTree = createEmployeeTree();
		HLayout mainView = new HLayout(10);
		mainView.setAlign(Alignment.LEFT);
		mainView.setHeight100();
		mainView.setWidth100();

		mainView.addMember(employeeTree);
		mainView.addMember(editor);

		mainView.draw();
	}
//   //   userId    parentId     userName    age    email  url
	private TreeGrid createEmployeeTree() {
				
	    TreeGridField userId = new TreeGridField("userId", "编号", 45);
		
		TreeGridField parentId = new TreeGridField("parentId", "领导号", 45);
		
		TreeGridField userName = new TreeGridField("userName","姓名", 200);
		userName.setTreeField(true);
		
		TreeGridField age = new TreeGridField("age","年龄", 45);
		
		TreeGridField email = new TreeGridField("email","E_mail", 200);
				
		TreeGridField url = new TreeGridField("url","网址",200);
				
		employeeTree = new TreeGrid();
		employeeTree.setWidth(750);
		employeeTree.setHeight(500);
		employeeTree.setNodeIcon("icons/16/person.png");
		employeeTree.setFolderIcon("icons/16/person.png");
		employeeTree.setAutoFetchData(true);
		employeeTree.setLoadDataOnDemand(true);
		employeeTree.setCanEdit(false);
		employeeTree.setCanReorderRecords(true);
		employeeTree.setCanAcceptDroppedRecords(false);
		employeeTree.setShowDropIcons(false);
		employeeTree.setShowOpenIcons(false);
		employeeTree.setClosedIconSuffix("");
		employeeTree.setFields(userId, parentId, userName,age  , email, url );
	
		
		employeeTree.setDataSource(EmployeeXmlDS.getInstance());
		employeeTree.addRecordClickHandler(new RecordClickHandler() {  
            public void onRecordClick(RecordClickEvent event) {  
                form.reset();  
                form.editSelectedData(employeeTree);  
            }  
        });  
		return employeeTree;
	}

	private VLayout createEditor(DataSource datasource ) {
	
		
		form = new DynamicForm();
		form.setWidth(300);
		form.setHeight(190);
		form.setIsGroup(true);
		form.setGroupTitle("员工信息");
//		form.setDataSource(datasource);
		
		//用户id
		IntegerItem userId = new IntegerItem();
		userId.setName("userId");
		userId.setTitle("编号");
		userId.setShowTitle(true);
		userId.setWidth(150);
		userId.setDisabled(true);
		
		//父亲Id
		IntegerItem parentId = new IntegerItem();
		parentId.setName("parentId");
		parentId.setTitle("直属领导");
		parentId.setShowTitle(true);
		parentId.setWidth(150);
		
		//用户名
		TextItem userName = new TextItem("");
		userName.setName("userName");
		userName.setTitle("用户名");
		userName.setLength(20);
		userName.setShowTitle(true);
		userName.setWidth(150);
		userName.setValidators(new UserNamelValidator());
		
		// 年龄
		IntegerItem age = new IntegerItem();
		age.setName("age");
		age.setTitle("年龄");
		age.setName("age");
		age.setShowTitle(true);
		age.setWidth(150);
		age.setValidators(new AgeValidator());
		
		// 电子邮箱
		TextItem email = new TextItem("");
		email.setName("email");
		email.setLength(100);
		email.setTitle("电子信箱");
		email.setShowTitle(true);
		email.setWidth(150);
		email.setValidators(new EmailValidator());
		
		//网址
		TextItem url = new TextItem("");
		url.setName("url");
		url.setLength(100);
		url.setTitle("网址");
		url.setShowTitle(true);
		url.setWidth(150);
		url.setValidators(new UrlValidator());
	//	url.setEmptyDisplayValue("http://www.163.com");

		form.setFields(userId, parentId,userName , age, email,url);
		form.setDataSource(datasource);

		IButton newButton = new IButton("新建");
		newButton.setWidth(80);
		newButton.addClickHandler(new ClickHandler() {

			public void onClick(ClickEvent event) {
				form.editNewRecord();

//			    form.setValue("parentId", "输入管理者工号");
//			    form.setValue("userName", "姓名");
//			    form.setValue("age", "年龄");
//			    form.setValue("email", "E_mail");
//			    form.setValue("url", "网址");

			}
		});

		IButton saveButton = new IButton("保存");
		saveButton.setWidth(80);
		saveButton.addClickHandler(new ClickHandler() {

			public void onClick(ClickEvent event) {
			
				if(form.validate(true))  {
				form.setAction(Constant.INFO_UPDATE);
			
				form.saveData();
				// form.reset();
				}
			}
		});

		// 删除按钮
		IButton removeButton = new IButton("删除");
		removeButton.setWidth(80);
		removeButton.addClickHandler(new ClickHandler() {

			public void onClick(ClickEvent event) {
				form.validate(false);
				form.setAction(Constant.INFO_DELETE);
				form.saveData();

				employeeTree.invalidateCache();

				employeeTree.removeSelectedData();
				employeeTree.refreshFields();
			}
		});

		VLayout editorLayout = new VLayout(5);
		editorLayout.setHeight(250);
		editorLayout.setAlign(VerticalAlignment.TOP);
		editorLayout.addMember(form);

		HLayout buttonPanel = new HLayout(20);
		buttonPanel.addMember(newButton);
		buttonPanel.addMember(saveButton);
		buttonPanel.addMember(removeButton);
		editorLayout.addMember(buttonPanel);
		editorLayout.setWidth(280);

		return editorLayout;

	}
}
