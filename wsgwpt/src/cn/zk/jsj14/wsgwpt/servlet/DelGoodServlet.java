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

public class DelGoodServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获得jsp页面参数
		String goodid = (String)request.getParameter("id");
		//调用业务逻辑
		GoodService ga = new GoodService();
		 ga.delGood(goodid);
		//跳转页面
		RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("/shopglzx.jsp");
		rd.forward(request, response);	
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
