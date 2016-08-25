package com.test.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;

import com.test.dao.pojo.Information;
import com.test.util.DB;
import com.test.util.JsonResponse;

public class InformationDeleteService {

	public void deleteInfo(Long user_id, Long parent_id , JsonResponse dadaMessage ) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		List result = null;

		try {
			
			result = new InformationDeleteService().getInformation(user_id);
			
		} catch (JSONException e1) {
			
			e1.printStackTrace();
		}
		
	
		if (result.size() <= 0  ) {
			String sql = "delete from information where user_id=?";
			try {
				conn = DB.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setLong(1, user_id);
				pstmt.executeUpdate();
				
				dadaMessage.setStatusSuccess();
				dadaMessage.setMessage("删除成功！！");
				

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DB.close(pstmt);
				DB.close(conn);
			}
		}else {
			dadaMessage.setStatusError();
			dadaMessage.setMessage("该记录不可以删除！他下面还有孩子！！！！！！！！");
			
		}

	}
	
	/**
	 * 
	 * @param parentId
	 * @return List
	 * @throws JSONException
	 * 判断将要删除的对象有没有 孩子，如果有孩子，不可以删除该记录
	 */
	public List getInformation(Long parentId) throws JSONException {

		String sql = "select user_id , parent_id ,  user_name  ,  age ,   email ,  url from  information where  parent_id = ?";

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
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			DB.close(rs);
			DB.close(pstmt);
			DB.close(conn);
		}
		return list;
	}

}
