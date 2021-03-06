package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.domain.Order;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class OrderDao {
	//删除订单
		public void delOrder(String id) throws SQLException{ 
			// 连接数据库
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "delete from purchase_order where order_id='"+id+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}

		public void addOrder(Order order) throws SQLException {
			// 连接数据库
						Connection conn = null;
						conn = DBUtil.getConnection();
						String sql = "insert into purchase_order values(?,?,?,?,?,?,?,?,?)";
						PreparedStatement pstmt = conn.prepareStatement(sql);
						pstmt.setString(1,order.getOrder_id());
						pstmt.setString(2,order.getGoods_id());
						pstmt.setDouble(3,order.getOrder_amount());
						pstmt.setString(4,order.getOrder_state());
						pstmt.setString(5,order.getUser_name());
						pstmt.setString(6,order.getUser_tel());
						pstmt.setString(7,order.getUser_address());
						pstmt.setDouble(8,order.getOrder_price());
						pstmt.setString(9,order.getGoods_name());
						pstmt.executeUpdate();
			
		}

		public void addOrder(String order_id, String goods_id, String user_name,
				String user_tel, String user_address) throws SQLException {
			// 连接数据库
						Connection conn = null;
						PreparedStatement ps = null;
						ResultSet rs = null;
						conn = DBUtil.getConnection();
						String sql1 = "Select * from shopping_cart where thing_id='"+goods_id+"'";
						ps = conn.prepareStatement(sql1);
						rs = ps.executeQuery();
							
							String goods_name="";
							Double order_amount= null ;
							String order_state="";
							Double thingprice=null;
							while(rs.next()) {
							
							 goods_name = rs.getString("thing_name");
							 order_amount = rs.getDouble("thing_amount");
							 order_state = rs.getString("thing_state");
							 thingprice = rs.getDouble("thing_price");
							}
							Double order_price = order_amount * thingprice;
							String sql = "insert into purchase_order values(?,?,?,?,?,?,?,?,?)";
							PreparedStatement pstmt = conn.prepareStatement(sql);
							pstmt.setString(1,order_id);
							pstmt.setString(2,goods_id);
							pstmt.setDouble(3,order_amount);
							pstmt.setString(4,order_state);
							pstmt.setString(5,user_name);
							pstmt.setString(6,user_tel);
							pstmt.setString(7,user_address);
							pstmt.setDouble(8,order_price);
							pstmt.setString(9,goods_name);
							pstmt.executeUpdate();
						
						
		}

		public Order ckOrder(String orderid) throws SQLException {
			Connection conn = null;
			ResultSet rs = null;
			conn = DBUtil.getConnection();
			String sql = "select * from purchase_order where order_id='"+orderid+"'";
			PreparedStatement ps = conn.prepareStatement(sql);
			String goodsid="";
			String goodsname="";
			Double orderamount= null ;
			String ordertype="";
			Double orderprice=null;
			String orderusername="";
			String orderusertel="";
			String orderuseraddress="";
			rs = ps.executeQuery();
			while(rs.next()) {
			 goodsid = rs.getString("goods_id");
			 goodsname = rs.getString("goods_name");
			 orderamount = rs.getDouble("order_amount");
			 ordertype = rs.getString("order_state");
			 orderprice = rs.getDouble("order_price");
			 orderusername = rs.getString("user_name");
			 orderusertel = rs.getString("user_tel");
			 orderuseraddress = rs.getString("user_address");
			}
			Order order = new Order();
			order.setOrder_id(orderid);
			order.setGoods_id(goodsid);
			order.setGoods_name(goodsname);
			order.setOrder_state(ordertype);
			order.setOrder_amount(orderamount);
			order.setOrder_price(orderprice);
			order.setUser_name(orderusername);
			order.setUser_tel(orderusertel);
			order.setUser_address(orderuseraddress);
			return order;
		}

		public void updateOrder(Order order) throws SQLException {
			// 连接数据库
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "update purchase_order set goods_id=?,order_amount=?,order_state=?,user_name=?,user_tel=?,user_address=?,order_price=?,goods_name=? where order_id ='"+order.getOrder_id()+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,order.getGoods_id());
			pstmt.setDouble(2,order.getOrder_amount());
			pstmt.setString(3,order.getOrder_state());
			pstmt.setString(4,order.getUser_name());
			pstmt.setString(5,order.getUser_tel());
			pstmt.setString(6,order.getUser_address());
			pstmt.setDouble(7,order.getOrder_price());
			pstmt.setString(8,order.getGoods_name());
			pstmt.executeUpdate();
		}
}
