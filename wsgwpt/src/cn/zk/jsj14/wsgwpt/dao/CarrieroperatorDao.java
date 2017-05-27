package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.domain.Carrieroperator;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class CarrieroperatorDao {
   //运营商登录
	public Carrieroperator checkNameAndPassword(Carrieroperator xiaoer) throws Exception {
		Carrieroperator newXiaoer = new Carrieroperator();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 连接数据库
		conn = DBUtil.getConnection();
		if (conn == null) {
			throw new Exception("数据库连接不成功！");
		}
		String sqlQuery = "Select * from carrieroperator where Carrieroperator_name = ? && Carrieroperator_pwd = ?";
		ps = conn.prepareStatement(sqlQuery);
		ps.setString(1, xiaoer.getCarrieroperator_name());
		ps.setString(2, xiaoer.getCarrieroperator_pwd());
		rs = ps.executeQuery();
		boolean result = rs.next();
		if (result == false) {
			return newXiaoer;
		}else{	
		String Carrieroperator_name = rs.getString("Carrieroperator_name");
		String Carrieroperator_pwd = rs.getString("Carrieroperator_pwd");
		newXiaoer.setCarrieroperator_name(Carrieroperator_name);
		newXiaoer.setCarrieroperator_pwd(Carrieroperator_pwd);
		return newXiaoer;
		}
	}

	public void updatePwd(Carrieroperator xiaoer) throws SQLException {
		// 连接数据库
		Connection conn = null;
		conn = DBUtil.getConnection();
		String sql = "update carrieroperator set Carrieroperator_pwd =? where Carrieroperator_name ='"+xiaoer.getCarrieroperator_name()+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,xiaoer.getCarrieroperator_pwd());
		pstmt.executeUpdate();	
	}

}
