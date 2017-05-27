package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zk.jsj14.wsgwpt.domain.Order;
import cn.zk.jsj14.wsgwpt.service.OrderService;

public class UpdateOrderServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获得jsp页面参数
		String order_id = (String)request.getParameter("order_id");
		String goods_id = (String)request.getParameter("goods_id");
		String amount = (String)request.getParameter("order_amount");
		Double order_amount = Double.parseDouble(amount);
		String order_state = (String)request.getParameter("order_state");
		String orderprice = (String)request.getParameter("order_price");
		Double order_price = Double.parseDouble(orderprice);
		String user_name = (String)request.getParameter("user_name");
		String user_tel = (String)request.getParameter("user_tel");
		String user_address = (String)request.getParameter("user_address");
		String goods_name = (String)request.getParameter("goods_name");
		//打包处理，形成一个对象，以便于后面传递参数使用
		Order order = new Order();
		order.setOrder_id(order_id);
		order.setGoods_id(goods_id);
		order.setOrder_amount(order_amount);
		order.setOrder_state(order_state);
		order.setUser_name(user_name);
		order.setUser_tel(user_tel);
		order.setUser_address(user_address);
		order.setOrder_price(order_price);
		order.setGoods_name(goods_name);
		//调用业务逻辑	
		OrderService oa = new OrderService();
		oa.updateOrder(order);
		//跳转页面
		RequestDispatcher rd = null;
		rd = request.getRequestDispatcher("/shopglzx.jsp");
		rd.forward(request, response);	
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
