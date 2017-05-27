package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.zk.jsj14.wsgwpt.domain.Carrieroperator;

import cn.zk.jsj14.wsgwpt.service.CarrieroperatorService;


public class YYSloginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CarrieroperatorService ls = new CarrieroperatorService();
			//�趨��������ʽ
			request.setCharacterEncoding("utf-8");
			//�趨��������ʽ
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
	        //		���jspҳ�����
			String userName = (String)request.getParameter("name");
			String userPassword =(String) request.getParameter("password");
			
			//����������γ�һ��user�����Ա��ں��洫�ݲ���ʹ��
			Carrieroperator xiaoer  = new Carrieroperator();
			xiaoer.setCarrieroperator_name(userName);
			xiaoer.setCarrieroperator_pwd(userPassword);
			boolean checkResult = false ;
			String msg = null;	
			RequestDispatcher rd = null;
			try{
				checkResult = ls.checkNameAndPassword(xiaoer);
				
				if(checkResult == true){
					 msg = userName;
					// request.setAttribute("MSG", msg);
					//ʹ��request�����getSession()��ȡsession�����session�������򴴽�һ��
					HttpSession session = request.getSession();
					//�����ݴ洢��session��
			        session.setAttribute("flag", msg);
					rd = request.getRequestDispatcher("/yysglzx.jsp");
				}else{
						
					rd = request.getRequestDispatcher("/yyslogin.jsp");
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