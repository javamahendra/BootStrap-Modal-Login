package com.app.modal;

public class Employee {

	private Long empid;
	private String empName;
	private String empEmail;
	private String empPhone;
	private String empPwd;

	public Employee() {
		super();
	}

	public Employee(Long empid, String empName, String empEmail, String empPhone, String empPwd) {
		super();
		this.empid = empid;
		this.empName = empName;
		this.empEmail = empEmail;
		this.empPhone = empPhone;
		this.empPwd = empPwd;
	}

	public Long getEmpid() {
		return empid;
	}

	public void setEmpid(Long empid) {
		this.empid = empid;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpPhone() {
		return empPhone;
	}

	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", empName=" + empName + ", empEmail=" + empEmail + ", empPhone=" + empPhone
				+ ", empPwd=" + empPwd + "]";
	}

}
