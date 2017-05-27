package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.zk.jsj14.wsgwpt.domain.Shop;
import cn.zk.jsj14.wsgwpt.service.ShopService;

public class ShopLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
        //		获得jsp页面参数
		String userName = (String)request.getParameter("name");
		String userPassword =(String) request.getParameter("password");
		
		//打包处理，形成一个user对象，以便于后面传递参数使用
		ShopService ls = new ShopService();
		Shop shop  = new Shop();
		shop.setShop_name(userName);
		shop.setShop_pwd(userPassword);
		boolean checkResult = false ;
		String msg = null;	
		RequestDispatcher rd = null;
		try{
			checkResult = ls.login(shop);
			
			if(checkResult == true){
				 msg = userName;
				// request.setAttribute("MSG", msg);
				//使用request对象的getSession()获取session，如果session不存在则创建一个
				HttpSession session = request.getSession();
				//将数据存储到session中
		        session.setAttribute("shopflag", msg);
				rd = request.getRequestDispatcher("/shopglzx.jsp");
			}else{
					
				rd = request.getRequestDispatcher("/shoplogin.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			
			//request.setAttribute("MSG", );
			rd.forward(request, response);
			
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
