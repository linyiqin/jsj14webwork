package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.domain.Shop;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class ShopDao {

	public Shop selectShop(String shop_name) throws SQLException {
		// 连接数据库
					Connection conn = null;
					ResultSet rs = null;
					conn = DBUtil.getConnection();
					String sql = "select * from shop where shop_name='"+shop_name+"'";
					PreparedStatement ps = conn.prepareStatement(sql);
					String username="";
					String usertel="";
					String useraddress="";
					rs = ps.executeQuery();
					while(rs.next()) {
					 username = rs.getString("shop_username");
					 usertel = rs.getString("shop_usertel");
					 useraddress = rs.getString("shop_useraddress");
					}
					Shop shop = new Shop();
					shop.setShop_name(shop_name);
					shop.setShop_username(username);
					shop.setShop_usertel(usertel);
					shop.setShop_useraddress(useraddress);
					return shop;
	}

	public void updateShop(Shop shop) throws SQLException {
		// 连接数据库
					Connection conn = null;
					conn = DBUtil.getConnection();
					String sql = "update shop set shop_username=?,shop_usertel=?,shop_useraddress=? where shop_name ='"+shop.getShop_name()+"'";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,shop.getShop_username());
					pstmt.setString(2,shop.getShop_usertel());
					pstmt.setString(3,shop.getShop_useraddress());
					pstmt.executeUpdate();
		
	}

	public void delShop(String shopname) throws SQLException {
		// 连接数据库
				Connection conn = null;
				conn = DBUtil.getConnection();
				String sql = "delete from shop where shop_name ='"+shopname+"'";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.executeUpdate();
		
	}

	public Shop getUserByName(Shop shop) throws Exception {

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// 连接数据库
		conn = DBUtil.getConnection();
        Shop newshop = new Shop();
		if (conn == null) {
			throw new Exception("数据库连接不成功！");
		}
		String sqlQuery = "Select shop_name,shop_pwd from shop where shop_name = ? && shop_pwd = ?";
		
		ps = conn.prepareStatement(sqlQuery);

		ps.setString(1, shop.getShop_name());
		ps.setString(2, shop.getShop_pwd());
		rs = ps.executeQuery();  
		boolean result = rs.next();
		if (result == false) {
			return newshop;
		}else{
			
		String userName = rs.getString("shop_name");
		String userPassword = rs.getString("shop_pwd");
		newshop.setShop_name(userName);
		newshop.setShop_pwd(userPassword);
		return newshop;
		}
	}

	public void updateshoppwd(Shop shop) throws SQLException {
		Connection conn = null;
		conn = DBUtil.getConnection();
		String sql = "update shop set shop_pwd=? where shop_name ='"+shop.getShop_name()+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,shop.getShop_pwd());
		pstmt.executeUpdate();
	}

}
