package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.ChkMemberRequest;
import member.service.DeleteMemberRequest;
import member.service.DeleteMemberService;
import member.service.DuplicateIdException;
import member.service.JoinRequest;
import member.service.JoinService;
import member.service.PwchkMemberService;
import mvc.command.CommandHandler;

public class ChangeCheckHandler implements CommandHandler{

	private static final String CHECK_VIEW = "/WEB-INF/view/pwchkForm.jsp";
	private PwchkMemberService chkMemService = new PwchkMemberService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) { 
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
		
		
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return CHECK_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		//HttpServletRequest req에 담겨서 온 값들(id,name,password,...)로 객체 하나 생성
		ChkMemberRequest chkMemReq = new ChkMemberRequest();
		chkMemReq.setId(req.getParameter("id"));
			chkMemReq.setPassword(req.getParameter("password"));
				
				//폼 입력값 검증의 결과를 담기 위한 맵 생성
				Map<String, Boolean> errors = new HashMap<>();
				
				// jsp가 맵에서 값을 뽑을 수 있도록 request에 errors라는 이름으로 맵을 부착 
				req.setAttribute("errors", errors);
				
				//회원가입 폼 null, passwr 불일치 검증: 검증 결과를 errors Map에 입력
				chkMemReq.validate(errors);
				
				//입력 폼의 어떤 항목에 값이 입력되지 않았거나, passwr가 불일치하면 입력 폼으로 다시 보낸다.
				if (!errors.isEmpty()) {
					return CHECK_VIEW;
				}
				
				//입력 폼 값에 문제가 없다.
				try {
					//폼 입력값을 joinReq 오브젝트로 만들어서 joinService 클래스의 join 메소드로 넘겨주고 실행
					chkMemService.pwchkMember(chkMemReq);
					return "/WEB-INF/view/changemyForm.jsp";
				} catch (DuplicateIdException e) {
					//join 메소드에서 id 중복체크에 걸리면 errors에 기록하고 가입 폼 반환
					errors.put("duplicateId", Boolean.TRUE);
					return CHECK_VIEW;
				}
	}
	
}
