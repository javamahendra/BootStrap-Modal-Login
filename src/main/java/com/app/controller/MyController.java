package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.modal.Employee;
import com.app.modal.Login;

@Controller
public class MyController {

	@GetMapping("/")
	public String home() {

		return "index";
	}

	@PostMapping("/home")
	public @ResponseBody boolean home1(@RequestBody @ModelAttribute Login login,HttpSession session) {

		System.err.println("------------------------------------");
		System.out.println(login.getEmpEmail()+", "+ login.getEmpPwd());
		System.out.println(login);
		System.err.println("------------------------------------");
		Employee emp = employee(login.getEmpEmail(), login.getEmpPwd());

		if (emp != null) {
			session.setAttribute("emp", emp);
			return true;
		} else {

			return false;
		}

	}

	public Employee employee(String email, String pwd) {

		Employee emp = new Employee();
		emp.setEmpid(10l);
		emp.setEmpName("Mahi");
		emp.setEmpEmail("mahindra");
		emp.setEmpPhone("8886012569");
		emp.setEmpPwd("12345");

		if (emp.getEmpEmail().equals(email) && emp.getEmpPwd().equals(pwd)) {
			return emp;

		} else {

			return null;
		}

	}
	
	@GetMapping("/data")
	public String index(){
		
		return "data";		
	}

}
