package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.zk.jsj14.wsgwpt.domain.Goods_imformation;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class GoodDao {
	//添加用户
		public void addGood(Goods_imformation good) throws SQLException{
			// 连接数据库
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "insert into goods_imformation values(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,good.getGoods_id());
			pstmt.setString(2,good.getGoods_name());
			pstmt.setDouble(3,good.getGoods_amount());
			pstmt.setString(4,good.getGoods_type());
			pstmt.setDouble(5,good.getGood_price());
			pstmt.executeUpdate();
		}

		public List<Goods_imformation> searchGood(String name) throws SQLException {
			Connection conn = null;
			ResultSet rs = null;
			conn = DBUtil.getConnection();
			String sql = "Select * from goods_imformation where goods_name like '%"+name+"%'";
			PreparedStatement ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			List<Goods_imformation> list = new ArrayList();	
			while(rs.next())
			{
				Goods_imformation good = new Goods_imformation();
				good.setGoods_name(rs.getString("goods_name"));
				good.setGoods_id(rs.getString("goods_id"));
				good.setGoods_amount(rs.getDouble("goods_amount"));
				good.setGoods_type(rs.getString("goods_type"));
				good.setGood_price(rs.getDouble("good_price"));
				list.add(good);
			}
			return list;
		}

		public Goods_imformation buyGood(String id) throws SQLException {
			Connection conn = null;
			ResultSet rs = null;
			conn = DBUtil.getConnection();
			String sql = "select * from goods_imformation where goods_id='"+id+"'";
			PreparedStatement ps = conn.prepareStatement(sql);
			String goodsid="";
			String goodsname="";
			Double goodsamount= null ;
			String goodstype="";
			Double goodprice=null;
			rs = ps.executeQuery();
			while(rs.next()) {
			 goodsid = rs.getString("goods_id");
			 goodsname = rs.getString("goods_name");
			 goodsamount = rs.getDouble("goods_amount");
			 goodstype = rs.getString("goods_type");
			 goodprice = rs.getDouble("good_price");
			}
			Goods_imformation good = new Goods_imformation();
			good.setGoods_id(goodsid);
			good.setGoods_name(goodsname);
			good.setGoods_type(goodstype);
			good.setGoods_amount(goodsamount);
			good.setGood_price(goodprice);
			return good;
		}

		public Goods_imformation ckGood(String goodid) throws SQLException {
			Connection conn = null;
			ResultSet rs = null;
			conn = DBUtil.getConnection();
			String sql = "select * from goods_imformation where goods_id='"+goodid+"'";
			PreparedStatement ps = conn.prepareStatement(sql);
			String goodsid="";
			String goodsname="";
			Double goodsamount= null ;
			String goodstype="";
			Double goodprice=null;
			rs = ps.executeQuery();
			while(rs.next()) {
			 goodsid = rs.getString("goods_id");
			 goodsname = rs.getString("goods_name");
			 goodsamount = rs.getDouble("goods_amount");
			 goodstype = rs.getString("goods_type");
			 goodprice = rs.getDouble("good_price");
			}
			Goods_imformation good = new Goods_imformation();
			good.setGoods_id(goodsid);
			good.setGoods_name(goodsname);
			good.setGoods_type(goodstype);
			good.setGoods_amount(goodsamount);
			good.setGood_price(goodprice);
			return good;
		}

		public void updateGood(Goods_imformation good) throws SQLException {
		// 连接数据库
		Connection conn = null;
		conn = DBUtil.getConnection();
		String sql = "update goods_imformation set goods_name=?,goods_amount=?,goods_type=?,good_price=? where goods_id ='"+good.getGoods_id()+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, good.getGoods_name());
		pstmt.setDouble(2, good.getGoods_amount());
		pstmt.setString(3, good.getGoods_type());
		pstmt.setDouble(4, good.getGood_price());
		pstmt.executeUpdate();
		}

		public void delGood(String goodid) throws SQLException {
			// 连接数据库
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "delete from goods_imformation where goods_id ='"+goodid+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}
}
