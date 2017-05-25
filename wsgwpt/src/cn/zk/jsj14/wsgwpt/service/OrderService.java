package cn.zk.jsj14.wsgwpt.service;

import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.dao.OrderDao;
import cn.zk.jsj14.wsgwpt.domain.Order;


public class OrderService {
	//创建一个Dao对象
		OrderDao orderDao = new OrderDao();
		//删除订单
		public void delOrder(String id) {
			try {
				orderDao.delOrder(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		public void addOrder(Order order) {
			try {
				orderDao.addOrder(order);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public void addOrder(String order_id,String goods_id, String user_name,
				String user_tel, String user_address) throws SQLException  {
			orderDao.addOrder(order_id,goods_id,user_name,user_tel,user_address);
			
		}
}
