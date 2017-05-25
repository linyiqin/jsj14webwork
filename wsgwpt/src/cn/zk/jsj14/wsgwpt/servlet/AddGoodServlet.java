package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zk.jsj14.wsgwpt.domain.Goods_imformation;
import cn.zk.jsj14.wsgwpt.service.GoodService;

public class AddGoodServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
				request.setCharacterEncoding("utf-8");
				//设定输出编码格式
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				//获得jsp页面参数
				String goodId = (String)request.getParameter("goods_id");
				String goodName = (String)request.getParameter("goods_name");
				String goodamount = (String)request.getParameter("goods_amount");
				double goodAmount = Double.parseDouble(goodamount);
				String goodType = (String)request.getParameter("goods_type");
				String goodprice = (String)request.getParameter("good_price");
				double goodPrice = Double.parseDouble(goodprice);
				//打包处理，形成一个对象，以便于后面传递参数使用
				Goods_imformation good  = new Goods_imformation();
				        good.setGoods_id(goodId);
						good.setGoods_name(goodName);
						good.setGoods_amount(goodAmount);
						good.setGoods_type(goodType);
						good.setGood_price(goodPrice);
						
				//调用业务逻辑
						GoodService ga = new GoodService();
						ga.addGood(good);
						//跳转页面
						RequestDispatcher rd = null;
						rd = request.getRequestDispatcher("/index.jsp");
						rd.forward(request, response);	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
