package member.command;

import java.io.IOException;
import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import member.service.ChangeMyService;
import member.service.InvalidPasswordException;
import member.service.MemberNotFoundException;
import mvc.command.CommandHandler;

public class ChangeMyHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/changemyForm.jsp";
	private ChangeMyService changeMySvc = new ChangeMyService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
			
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException  {
		// 사용자가 로그인된 상태이므로 세션의 authUser 속성에 회원정보(Member 객체)가 붙어 있음
		// 세션에서 회원 정보 가져옴
		User user = (User) req.getSession().getAttribute("authUser");

		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		/*
		 * req를 선택하여 setAttribute 함수를 실행할 때 우리가 설정하고자 하는 attribute_name(속성 이름)과
		 * attribute_value(속성 값)을 넣어줘야 합니다.
		 * 이름이 name인 속성의 값을 value로 지정합니다.
		 */


		  String name =req.getParameter("name"); 
		  String email =req.getParameter("email"); 
		  String email1 =req.getParameter("email1");
		  String phone =req.getParameter("phone");
		

		
		  if (name == null || name.isEmpty()) { 
			  errors.put("name", Boolean.TRUE); }
		  if (email == null || email.isEmpty()) {
		     errors.put("email", Boolean.TRUE); 
		  } 
		  if (email1 == null ||email1.isEmpty()) {
			  errors.put("email1", Boolean.TRUE); 
			  }
		  if (phone== null || phone.isEmpty()) {
			  errors.put("phone", Boolean.TRUE);
			  }

		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}

		try {		
		  changeMySvc.changeMy(user.getId(), name, email, email1, phone);
		 return "/WEB-INF/view/changemySuccess.jsp";
		 
		}catch (MemberNotFoundException e) {
			res.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return null;
		}
	}

}
