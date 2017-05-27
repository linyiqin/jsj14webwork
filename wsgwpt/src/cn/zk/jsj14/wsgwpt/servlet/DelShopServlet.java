package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zk.jsj14.wsgwpt.service.ShopService;
import cn.zk.jsj14.wsgwpt.service.ShopcartService;

public class DelShopServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获得jsp页面参数
		String shopname = (String)request.getParameter("name");
		
		//调用业务逻辑
				ShopService ga = new ShopService();
				ga.delShop(shopname);
				//跳转页面
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("/yysglzx.jsp");
				rd.forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	
	}

}
