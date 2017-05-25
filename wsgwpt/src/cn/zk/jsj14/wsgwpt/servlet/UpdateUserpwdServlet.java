package cn.zk.jsj14.wsgwpt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zk.jsj14.wsgwpt.domain.User;
import cn.zk.jsj14.wsgwpt.service.UserServiceImpl;

public class UpdateUserpwdServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//�趨��������ʽ
		request.setCharacterEncoding("utf-8");
		//�趨��������ʽ
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//���jspҳ�����
		String userName = (String)request.getParameter("name");
		String userPassword =(String) request.getParameter("password");
		//����������γ�һ��user�����Ա��ں��洫�ݲ���ʹ��
				User user  = new User();
				user.setUser_name(userName);
				user.setUser_pwd(userPassword);
		//����ҵ���߼�
				UserServiceImpl up = new UserServiceImpl();
				up.updateUserpwd(user);
				//��תҳ��
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("/grzx.jsp");
				rd.forward(request, response);	
}
public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
doGet(request, response);
}

}