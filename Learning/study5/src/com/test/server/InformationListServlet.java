package com.test.server;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import com.test.service.InformationListService;

public class InformationListServlet extends HttpServlet {

	private static final Object jsonArray = null;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		JSONArray jsonArray = null;
		
		long parentId  = Long.parseLong(request.getParameter("parentId"));
		
		InformationListService  infoListService = new InformationListService();
		
		try {
			
			 jsonArray = infoListService.getInformation(parentId);
			
		} catch (JSONException e) {
			
			e.printStackTrace();
		}
		//System.out.println("=======" + jsonArray.toString());
		response.getWriter().write(jsonArray.toString());
		
	
		

		
		
		
	}


	
}
