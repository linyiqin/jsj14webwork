package cn.zk.jsj14.wsgwpt.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.zk.jsj14.wsgwpt.domain.Carrieroperator;
import cn.zk.jsj14.wsgwpt.domain.User;

public class cs {

	public static <declared> void main(String[] args) throws Exception {
		// 连接数据库
		Connection conn = null;
		conn = DBUtil.getConnection();
		String name="明明";
		String sql = "update user set user_tel=?,user_truename=?,user_address=? where user_name='"+name+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(2,"黄某某");
		pstmt.setString(1,"13675657987");
		pstmt.setString(3,"广东省广州市海珠区滨江东路765号");
		pstmt.executeUpdate();
	}
}
	


