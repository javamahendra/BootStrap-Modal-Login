package com.app.modal;

import org.springframework.stereotype.Component;

@Component
public class Login {

	private String empEmail;
	private String empPwd;

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	public Login() {
		super();
	}

	public Login(String empEmail, String empPwd) {
		super();
		this.empEmail = empEmail;
		this.empPwd = empPwd;
	}

	@Override
	public String toString() {
		return "Login [empEmail=" + empEmail + ", empPwd=" + empPwd + "]";
	}

}
