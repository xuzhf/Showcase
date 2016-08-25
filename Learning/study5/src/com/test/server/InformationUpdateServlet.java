package com.test.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.test.dao.pojo.Information;
import com.test.service.InformationUpdateService;


public class InformationUpdateServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//     userId  parentId  userName    age    email  url
		
		Long userId = null;
		String parm = request.getParameter("userId");
		if ( null  != parm ) {
			userId = Long.parseLong(request.getParameter("userId"));
		}
				
		Long parentId = Long.parseLong(request.getParameter("parentId"));		
		String userName = request.getParameter("userName");		
		Long age = Long.parseLong(request.getParameter("age"));		
		String email = request.getParameter("email");	
		String url = request.getParameter("url");
	
		
		Information info = new Information();
		info.setUserId(userId);
		info.setParentId(parentId);
		info.setUserName(userName);
		info.setAge(age);
		info.setEmail(email);
		info.setUrl(url);
		
		InformationUpdateService   infoUpdateService = new InformationUpdateService();
		
		infoUpdateService.update(info);
		System.out.println("======================");
		
		JSONArray data = new JSONArray();
		
		JSONObject subObj = new JSONObject();
		
		try {
			subObj.put("userId", userId);
			subObj.put("parentId", parentId);
			subObj.put("userName",userName );
			subObj.put("age", age);
			subObj.put("email", email);
			subObj.put("url", url);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		data.put(subObj);
		
		
		
		response.getWriter().write(data.toString());
	
		
		
		
	}

	
	
	
}
