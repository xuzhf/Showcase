package com.test.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.test.service.InformationDeleteService;
import com.test.util.JsonResponse;

public class InformationDeleteServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONArray data = null;
		JsonResponse dadaMessage = new JsonResponse();
		
//		if( null == request.getParameter("userId") || "".equals(request.getParameter("userId"))) {
//			
//			dadaMessage.setStatusError();
//			dadaMessage.setMessage("请 选择要删除的记录，然后点击删除按钮！！");
//			return ;
//			
//		}
		
		
		// 取得form参数	
		Long userId = Long.parseLong(request.getParameter("userId"));				
	    Long parentId = Long.parseLong(request.getParameter("parentId"));		
	    
	    	
	    
		String userName = request.getParameter("userName");		
		Long age = Long.parseLong(request.getParameter("age"));		
		String email = request.getParameter("email");	
		String url = request.getParameter("url");
	    // 执行删除操作	    
	    InformationDeleteService inforDelService = new InformationDeleteService();	    
	    inforDelService.deleteInfo(userId, parentId, dadaMessage);	
	    
	    
	    response.getWriter().write(dadaMessage.toString());
	    
	    
//	    response.getWriter().write("{}");		
//        InformationListService infoListService = new InformationListService();
//        try {
//        	//data = infoListService.getInformation(userId, parentId);
//        	data = infoListService.getInformation( parentId);
//		} catch (JSONException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		response.getWriter().write(data.toString());
//	    response.getWriter().write("{}");
	    
	    
	}
	
}
