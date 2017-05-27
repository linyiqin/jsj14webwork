package cn.zk.jsj14.wsgwpt.service;


import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.dao.ShopDao;
import cn.zk.jsj14.wsgwpt.domain.Shop;
import cn.zk.jsj14.wsgwpt.domain.User;

public class ShopService {
	//创建一个Dao对象
	ShopDao shopDao = new ShopDao();
	
	public Shop selectShop(String shop_name) {
		try {
			return shopDao.selectShop(shop_name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void updateShop(Shop shop) {
		try {
			shopDao.updateShop(shop);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void delShop(String shopname) {
		try {
			shopDao.delShop(shopname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public boolean login(Shop shop) throws Exception {
		boolean result = false;
    	Shop newShop = new Shop();
    	newShop = shopDao.getUserByName(shop);
    	//如果返回值不为空，表示可以得到一个用户名和密码相匹配的值
    	if( newShop.getShop_name() != null){
    		result = true;
    	}	
    	return result;
	}

	public void xiugaimm(Shop shop) {
		try {
			shopDao.updateshoppwd(shop);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
