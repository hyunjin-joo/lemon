package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.fabric.Response;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class PwchkMemberService {

private MemberDao memberDao = new MemberDao();
	
	public void pwchkMember(ChkMemberRequest chkMemReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			System.out.println("여기까지가");
			//id 중복 체크: 중복이면 롤백하고 익셉션 처리
			Member member = memberDao.selectById(conn, chkMemReq.getId());
			if (member==null || (!member.getPassword().equals(chkMemReq.getPassword()))) {
				System.out.println("여기까지가 끝인가보오");				
				JdbcUtil.rollback(conn);//사실 할 필요없음
				throw new DuplicateIdException();
			}
			
			
			System.out.println("chkMemReq>>>> gogo");
			//중복이 아니면 insert해서 join. DB에 저장 (DTO인 Member 객체 생성하고 값 넣어서 DAO에 insert메소드 호출)
			/* memberDao.check(conn, member); */
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}

