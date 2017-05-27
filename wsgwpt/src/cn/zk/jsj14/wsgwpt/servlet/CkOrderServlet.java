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


public class CkOrderServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获得jsp页面参数
		String orderid = (String)request.getParameter("id");
		String method = (String)request.getParameter("method");
		//调用业务逻辑
		OrderService ga = new OrderService();
		Order order = ga.ckOrder(orderid);
		 request.setAttribute("order",order);
		//跳转页面
		RequestDispatcher rd = null;
		if(method.equals("cx"))
		{
			rd = request.getRequestDispatcher("/shopcxordergo.jsp");
		}else{
			rd = request.getRequestDispatcher("/shopupdateordergo.jsp");
		}
		rd.forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
