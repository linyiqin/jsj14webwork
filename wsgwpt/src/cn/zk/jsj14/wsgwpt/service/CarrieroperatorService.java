package cn.zk.jsj14.wsgwpt.service;

import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.dao.CarrieroperatorDao;
import cn.zk.jsj14.wsgwpt.domain.Carrieroperator;
import cn.zk.jsj14.wsgwpt.domain.User;

public class CarrieroperatorService {
	CarrieroperatorDao ca = new CarrieroperatorDao();
	
	public boolean checkNameAndPassword(Carrieroperator xiaoer) throws Exception {
		boolean result = false;
		Carrieroperator newXiaoer = new Carrieroperator();
    	newXiaoer = ca.checkNameAndPassword(xiaoer);	
    	//如果返回值不为空，表示可以得到一个用户名和密码相匹配的值
    	if( newXiaoer.getCarrieroperator_name() != null){
    		result = true;
    	}
		return result;
	}
//修改密码
	public void updatePwd(Carrieroperator xiaoer) {
		try {
			ca.updatePwd(xiaoer);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

}
