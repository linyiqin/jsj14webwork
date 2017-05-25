package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.domain.Shopping_cart;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class ShopcartDao {
	//删除购物车商品
	public void delShopcart(String id) throws SQLException{ 
		// 连接数据库
		Connection conn = null;
		conn = DBUtil.getConnection();
		String sql = "delete from shopping_cart where thing_id='"+id+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
	}
	//添加购物车
		public void addShopcart(String id) throws SQLException{ 
			// 连接数据库
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ResultSet rs1 = null;
			conn = DBUtil.getConnection();
			String sql1 = "Select * from shopping_cart where thing_id='"+id+"'";
			ps = conn.prepareStatement(sql1);
			rs = ps.executeQuery();
			boolean result = rs.next();
			if (result == false) {
				String sqlQuery = "Select * from goods_imformation where goods_id='"+id+"'";
				PreparedStatement ps1 = conn.prepareStatement(sqlQuery);
				rs1 = ps1.executeQuery();
				String thingid="";
				String thingname="";
				Double thingamount= null ;
				String thingstate="";
				Double thingprice=null;
				while(rs1.next()) {
				 thingid = rs1.getString("goods_id");
				 thingname = rs1.getString("goods_name");
				 thingamount = rs1.getDouble("goods_amount");
				 thingstate = rs1.getString("goods_type");
				 thingprice = rs1.getDouble("good_price");
				}
				String sql = "insert into shopping_cart values(?,?,?,?,?,1)";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,thingid);
				pstmt.setString(2,thingname);
				pstmt.setDouble(3,thingamount);
				pstmt.setString(4,thingstate);
				pstmt.setDouble(5,thingprice);
				pstmt.executeUpdate();
			}else{
				Double thingamount = rs.getDouble("thing_amount");
				Double thing_amount = thingamount + 1;
				String sql2 = "update shopping_cart set thing_amount=? where thing_id ='"+id+"'";
				PreparedStatement pstmt = conn.prepareStatement(sql2);
				pstmt.setDouble(1,thing_amount);
				pstmt.executeUpdate();
			
			}
			
		}
		public void updateShopcart(String id, Double thing_amount) throws SQLException {
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "update shopping_cart set thing_amount='"+thing_amount+"' where thing_id='"+id+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}
		public Shopping_cart selectShopcart(String id) throws SQLException {
			// 连接数据库
			Connection conn = null;
			ResultSet rs = null;
			conn = DBUtil.getConnection();
			String sql = "select * from shopping_cart where thing_id='"+id+"'";
			PreparedStatement ps = conn.prepareStatement(sql);
			String thingid="";
			String thingname="";
			Double goodsamount= null ;
			String thingstate="";
			Double thingprice=null;
			Double thingamount= null ;
			rs = ps.executeQuery();
			while(rs.next()) {
			 thingid = rs.getString("thing_id");
			 thingname = rs.getString("thing_name");
			 goodsamount = rs.getDouble("goods_amount");
			 thingstate = rs.getString("thing_state");
			 thingprice = rs.getDouble("thing_price");
			 thingamount = rs.getDouble("thing_amount");
			}
			Shopping_cart cart = new Shopping_cart();
			cart.setThing_id(thingid);
			cart.setThing_name(thingname);
			cart.setGoods_amount(goodsamount);
			cart.setThing_state(thingstate);
			cart.setThing_price(thingprice);
			cart.setThing_amount(thingamount);
			return cart;
			
		}
		public Shopping_cart buyGood(String id) throws SQLException {
			// 连接数据库
						Connection conn = null;
						ResultSet rs = null;
						conn = DBUtil.getConnection();
						String sql = "select * from goods_imformation where goods_id='"+id+"'";
						PreparedStatement ps = conn.prepareStatement(sql);
						String thingid="";
						String thingname="";
						Double goodsamount= null ;
						String thingstate="";
						Double thingprice=null;
						Double thingamount= null ;
						rs = ps.executeQuery();
						while(rs.next()) {
						 thingid = rs.getString("goods_id");
						 thingname = rs.getString("goods_name");
						 goodsamount = rs.getDouble("goods_amount");
						 thingstate = rs.getString("goods_type");
						 thingprice = rs.getDouble("good_price");
						 thingamount = 1.0;
						}
						Shopping_cart cart = new Shopping_cart();
						cart.setThing_id(thingid);
						cart.setThing_name(thingname);
						cart.setGoods_amount(goodsamount);
						cart.setThing_state(thingstate);
						cart.setThing_price(thingprice);
						cart.setThing_amount(thingamount);
						return cart;
		}
}
