package com.test.client;


import java.util.LinkedHashMap;
import java.util.Map;



public class Constant {
	
//	     public static boolean isDebug = true;
//		 public static boolean isDebug = false;

	public static String HOST = "/";        //"http://localhost:8080/mycmsGWT/";//GWT.getModuleBaseURL()
	//保存      或        更新
	public static String MENU_LIST = HOST + "console/mainMenu.jsp?action=list";
	

	//  更新      and   保存
	public static String INFO_UPDATE = HOST + "admin/updateServlet.action";
	// 删除
	public static String INFO_DELETE = HOST + "admin/deleteServlet.action";
	// 列表
	public static String INFO_LIST = HOST + "admin/listServlet.action";

}
