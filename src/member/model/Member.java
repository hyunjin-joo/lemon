package member.model;

import java.util.Date;

public class Member {

	private String id;
	private String name;
	private String password;
	private String email;
	private String email1;
	private String phone;
	private Date regDate;

	public Member(String id, String name, String password,String email,String email1, String phone, Date regDate) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.email1 = email1;
		this.phone = phone;
		this.regDate = regDate;
	}

	

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getEmail1() {
		return email1;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public Date getRegDate() {
		return regDate;
	}
	
	/* 입출력 객체(DTO)를 다룰 때 즉시 사용하기 쉽도록 꼭 필요한 메소드를 작성 */
	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}

	public void changePassword(String newPwd ) {
		
		this.password = newPwd;

	}



	public void changeMy(String name, String email, String email1, String phone) {
	this.name = name;
	this.email = email;
	this.email1 = email1;
	this.phone = phone;
		
	}
	
	
	/*
	 * public void changeMy(String newName,String newEmail,String newEmail1, String
	 * newPhone) { this.name = newName; this.email = newEmail; this.email1 =
	 * newEmail1; this.phone = newPhone; }
	 */
	


}
