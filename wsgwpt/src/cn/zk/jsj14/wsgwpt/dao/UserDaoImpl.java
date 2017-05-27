package cn.zk.jsj14.wsgwpt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.zk.jsj14.wsgwpt.domain.User;
import cn.zk.jsj14.wsgwpt.util.DBUtil;

public class UserDaoImpl {
	//添加用户
	public void addUser(User user) throws SQLException{
		// 连接数据库
		Connection conn = null;
		conn = DBUtil.getConnection();
		String sql = "insert into user values(?,?,null,null,null)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,user.getUser_name());
		pstmt.setString(2,user.getUser_pwd());
		pstmt.executeUpdate();
	}
	//修改用户信息
		public void updateUser(User user) throws SQLException{
			// 连接数据库
			Connection conn = null;
			conn = DBUtil.getConnection();
			String sql = "update user set user_pwd=?,user_tel=?,user_truename=?,user_address=? where user_name ='"+user.getUser_name()+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,user.getUser_pwd());
			pstmt.setString(2,user.getUser_tel());
			pstmt.setString(3,user.getUser_truename());
			pstmt.setString(4,user.getUser_address());
			pstmt.executeUpdate();
		}
		//修改用户密码
				public void updateUserpwd(User user) throws SQLException{
					// 连接数据库
					Connection conn = null;
					conn = DBUtil.getConnection();
					String sql = "update user set user_pwd=? where user_name ='"+user.getUser_name()+"'";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,user.getUser_pwd());
					pstmt.executeUpdate();
				}
				public void delUser(String username) throws SQLException {
					// 连接数据库
					Connection conn = null;
					conn = DBUtil.getConnection();
					String sql = "delete from user where user_name ='"+username+"'";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.executeUpdate();
					
				}
				//查询信息
				public User selectUser(String username) throws SQLException {
					// 连接数据库
					Connection conn = null;
					ResultSet rs = null;
					conn = DBUtil.getConnection();
					String sql = "select * from user where user_name ='"+username+"'";
					PreparedStatement ps = conn.prepareStatement(sql);
					String user_name="";
					String usertel="";
					String useraddress="";
					String userpwd="";
					rs = ps.executeQuery();
					while(rs.next()) {
					 user_name = rs.getString("user_truename");
					 usertel = rs.getString("user_tel");
					 useraddress = rs.getString("user_address");
					 userpwd = rs.getString("user_pwd");
					}
					User user = new User();
					user.setUser_name(username);
					user.setUser_truename(user_name);
					user.setUser_tel(usertel);
					user.setUser_address(useraddress);
					user.setUser_pwd(userpwd);
					return user;
				}
				public void yupdateUser(User user1) throws SQLException {
					// 连接数据库
					Connection conn = null;
					conn = DBUtil.getConnection();
					String sql = "update user set user_tel=?,user_truename=?,user_address=? where user_name='"+user1.getUser_name()+"'";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,user1.getUser_tel());
					pstmt.setString(2,user1.getUser_truename());
					pstmt.setString(3,user1.getUser_address());
					pstmt.executeUpdate();
					
				}
}
