package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class ChangeMyService {

	private MemberDao memberDao = new MemberDao();
	
	public void changeMy(String userId, String name, String email, String email1, String phone) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Member member = memberDao.selectById(conn, userId);
			  if (member == null) { 
				  throw new MemberNotFoundException(); 
				 
				  } 
			 
			 member.changeMy(name, email, email1, phone);
			memberDao.update(conn, member);
			
			conn.commit();
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
