package member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.Member;
import member.service.ListMemberService;
import mvc.command.CommandHandler;

public class MemberListHandler implements CommandHandler{
	
	private ListMemberService listMemberService = new ListMemberService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Member> mList = null;
		mList = listMemberService.listMember();
		
		/*
		 * req를 선택하여 setAttribute 함수를 실행할 때 우리가 설정하고자 하는 attribute_name(속성 이름)과
		 * attribute_value(속성 값)을 넣어줘야 합니다.
		 * 이름이 name인 속성의 값을 value로 지정합니다.
		 */
		//Element.setAttribute(name(속성이름), value(속성값));
		req.setAttribute("mList", mList);
		return "/WEB-INF/view/memberList.jsp";
	}
	
}
