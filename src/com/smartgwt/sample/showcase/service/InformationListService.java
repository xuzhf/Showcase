package com.smartgwt.sample.showcase.service;

import java.sql.Connection;

import org.slf4j.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.smartgwt.sample.showcase.dao.pojo.Information;
import com.smartgwt.sample.showcase.util.DB;
import com.smartgwt.sample.showcase.util.JobLogFactory;

public class InformationListService {
	Logger logger = JobLogFactory.createLogger(InformationListService.class.getName());
	public static void main(String[] args) throws JSONException {
		long l = 0L;
		InformationListService test = new InformationListService();
		
		JSONArray ja = test.getInformation(l);
		System.out.println("----------");
	}
	public JSONArray getInformation(Long  parentId) throws JSONException {
		
		JSONArray data = new JSONArray();

		String sql = "select user_id , parent_id ,  user_name  ,  age ,   email ,  url from  information where  parent_id = ?";
		logger.info(sql);
		Connection conn = DB.getConnection();

		PreparedStatement pstmt = null;

		ResultSet rs = null;
		
		List list = new ArrayList();

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setLong(1, parentId);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				Information info = new Information();

				info.setUserId(rs.getLong(1));
				info.setParentId(rs.getLong(2));
				info.setUserName(rs.getString(3));
				info.setAge(rs.getLong(4));
				info.setEmail(rs.getString(5));
				info.setUrl(rs.getString(6));

				list.add(info);

			}
			//     // userId  parentId  userName    age    email  url
			
			for (int i = 0; i < list.size(); i++) {
				Information subInformation = (Information) list.get(i);
				JSONObject subObj = new JSONObject();
				subObj.put("userId", subInformation.getUserId());
				subObj.put("parentId", subInformation.getParentId());
				subObj.put("userName", subInformation.getUserName());
				subObj.put("age", subInformation.getAge());
				subObj.put("email", subInformation.getEmail());
				subObj.put("url", subInformation.getUrl());
				
				data.put(subObj);
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			DB.close(rs);

			DB.close(pstmt);
			
			DB.close(conn);

		}

		return data;
	}
	
	// --------回写方法--------回写方法--------------
public JSONArray getInformation( Long userId, Long  parentId) throws JSONException {
		
		JSONArray data = new JSONArray();

		String sql = "select user_id , parent_id ,  user_name  ,  age ,   email ,  url  from  information where  user_id != ?  and  parent_id = ?  ";
		
		Connection conn = DB.getConnection();

		PreparedStatement pstmt = null;

		ResultSet rs = null;
		
		List list = new ArrayList();

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setLong(1, userId);
			pstmt.setLong(2, parentId);

			rs = pstmt.executeQuery();
			while (rs.next()) {

				Information info = new Information();

				info.setUserId(rs.getLong(1));
				info.setParentId(rs.getLong(2));
				info.setUserName(rs.getString(3));
				info.setAge(rs.getLong(4));
				info.setEmail(rs.getString(5));
				info.setUrl(rs.getString(6));

				list.add(info);

			}
			//     // userId  parentId  userName    age    email  url
			
			for (int i = 0; i < list.size(); i++) {
				Information subInformation = (Information) list.get(i);
				JSONObject subObj = new JSONObject();
				subObj.put("userId", subInformation.getUserId());
				subObj.put("parentId", subInformation.getParentId());
				subObj.put("userName", subInformation.getUserName());
				subObj.put("age", subInformation.getAge());
				subObj.put("email", subInformation.getEmail());
				subObj.put("url", subInformation.getUrl());
				
				data.put(subObj);
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			DB.close(rs);

			DB.close(pstmt);
			
			DB.close(conn);

		}

		return data;
	}


}
