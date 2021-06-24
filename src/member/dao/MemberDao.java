package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jdbc.JdbcUtil;
import member.model.Member;

public class MemberDao {

	public List<Member> selectAll(Connection conn) throws SQLException {
		List<Member> mList = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from member");
			/* executeQuery 수행결과로 ResultSet 객체의 값을 반환합니다., SELECT 구문을 수행할 때 사용되는 함수입니다. */
			rs = pstmt.executeQuery();
			
			Member member = null;
			while (rs.next()) {
				member = new Member(rs.getString("memberid"), 
						rs.getString("name"), 
						rs.getString("password"),
						rs.getString("email"), 
						rs.getString("email1"),
						rs.getString("phone"),
						toDate(rs.getTimestamp("regdate")));
				        mList.add(member);
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return mList;
	}
	
	// id로 회원 정보 가져오기 - id 중복 확인, 로그인 등에 사용
	public Member selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from member where memberid = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Member member = null;
			if (rs.next()) {
				member = new Member(rs.getString("memberid"),
						rs.getString("name"), 
						rs.getString("password"),
						rs.getString("email"), 
						rs.getString("email1"), 
						rs.getString("phone"),
						toDate(rs.getTimestamp("regdate")));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	// db에서 가져온 회원 정보의 날짜 정보를 Date 타입으로 형변환해주는 메소드
	private Date toDate(Date date) {
		return date == null ? null : new Date(date.getTime());
	}

	/* 회원 등록 : service로부터 커넥션과 멤버 객체를 받아서 처리 - 커넥션 닫는 일은 service에서 함 */
	public void insert(Connection conn, Member mem) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?,?)")) {
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getName());
			pstmt.setString(3, mem.getPassword());
			pstmt.setTimestamp(4, new Timestamp(mem.getRegDate().getTime()));
			pstmt.setString(5, mem.getEmail());
			pstmt.setString(6, mem.getEmail1());
			pstmt.setString(7, mem.getPhone());
			pstmt.executeUpdate();
		}
	}

	/* 회원정보 수정: id로 확인하여 패스워드 수정 */
	public void update1(Connection conn, Member member) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("update member set password = ? where memberid = ?")) {
			/* pstmt.setString(1, member.getName()); */
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getId());
			pstmt.executeUpdate();
		}
	}

	/* 회원정보 수정: id로 확인하여 이름과 패스워드 수정 */
	
	public void update(Connection conn, Member member) throws SQLException{
		
		PreparedStatement pstmt = conn.prepareStatement("update member set name = ?, email = ?, email1 = ?, phone = ? where memberid = ?");
		pstmt.setString(1, member.getName());
		pstmt.setString(2,member.getEmail());
		pstmt.setString(3, member.getEmail1());
		pstmt.setString(4, member.getPhone());
		pstmt.setString(5, member.getId());
		pstmt.executeUpdate();
	}


	public void delete(Connection conn, Member member) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("delete from member where memberid = ?")) {
			pstmt.setString(1, member.getId());
			pstmt.executeUpdate();
		}
	}



}
