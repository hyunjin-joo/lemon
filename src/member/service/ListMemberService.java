package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import java.util.Date;
import java.util.List;

import article.model.Article;
import article.service.ArticlePage;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

//서비스 : 컨트롤러의 호출을 받아 매개변수로 받은 값 등을 이용해 과제 처리 알고리즘
// -- 주로 dao를 호출하여 db(mysql)에 데이터를 입출력하고 그 결과를 처리하여 컨트롤러로 반환

public class ListMemberService {
	
	private MemberDao memberDao = new MemberDao();

	public List<Member> listMember() throws SQLException {
		Connection conn = ConnectionProvider.getConnection();
		return memberDao.selectAll(conn);
	}
	
	
	

		
}


