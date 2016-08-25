package com.smartgwt.sample.showcase.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.smartgwt.sample.showcase.dao.pojo.Information;
import com.smartgwt.sample.showcase.util.DB;

public class InformationUpdateService {

	public void update(Information info) {

		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		String sql;

		if (null == info.getUserId()) {
			// userId parentId userName age email url
			sql = "insert into information (parent_id,user_name,age,email,url) values(?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setLong(1, info.getParentId());
				pstmt.setString(2, info.getUserName());
				pstmt.setLong(3, info.getAge());
				pstmt.setString(4, info.getEmail());
				pstmt.setString(5, info.getUrl());
				pstmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DB.close(pstmt);
				DB.close(conn);
			}
		} else { // userId parentId userName age email url
			sql = "update information set parent_id=? , user_name=?,  age=?,  email=?,  url=? where user_id =?";
			try {
				pstmt = conn.prepareStatement(sql);

				pstmt.setLong(1, info.getParentId());
				pstmt.setString(2, info.getUserName());
				pstmt.setLong(3, info.getAge());
				pstmt.setString(4, info.getEmail());
				pstmt.setString(5, info.getUrl());
				pstmt.setLong(6, info.getUserId());

				pstmt.executeUpdate();

			} catch (SQLException e) {

				e.printStackTrace();
			} finally {
				DB.close(pstmt);
				DB.close(conn);

			}
		}
	}

}
