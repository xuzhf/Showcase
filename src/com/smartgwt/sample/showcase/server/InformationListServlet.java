package com.smartgwt.sample.showcase.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import com.smartgwt.sample.showcase.service.InformationListService;

public class InformationListServlet extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 7997782377220086640L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		JSONArray jsonArray = null;

		long parentId = Long.parseLong(request.getParameter("parentId"));

		InformationListService infoListService = new InformationListService();

		try {

			jsonArray = infoListService.getInformation(parentId);

		} catch (JSONException e) {

			e.printStackTrace();
		}
		response.getWriter().write(jsonArray.toString());

	}

}
