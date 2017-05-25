package cn.zk.jsj14.wsgwpt.service;

import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.dao.ShopcartDao;
import cn.zk.jsj14.wsgwpt.domain.Shopping_cart;

public class ShopcartService {
	//创建一个Dao对象
	ShopcartDao shopcartDao = new ShopcartDao();
	//删除购物车商品
	public void delShopcart(String id) {
		try {
			shopcartDao.delShopcart(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//添加购物车
		public void addShopcart(String id) {
			try {
				shopcartDao.addShopcart(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		public void updateShopcart(String id, Double thing_amount) {
			try {
				shopcartDao.updateShopcart(id,thing_amount);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public Shopping_cart selectShopcart(String id) {
			try {
				return shopcartDao.selectShopcart(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
		public Shopping_cart buyGood(String id) {
			try {
				return shopcartDao.buyGood(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
}
