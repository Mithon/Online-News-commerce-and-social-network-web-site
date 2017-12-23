package edu.daffodil.ssb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.daffodil.ssb.dao.Student;
import edu.daffodil.ssb.services.StudentService;


@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;	
	
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@RequestMapping(value="/student")
	public String showPage(){
		return "student";
	}
	
	@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	public @ResponseBody String saveStudent(@RequestBody Student student){		
		
		studentService.saveStudent(student);
			
		return "!! Record Saved Successfully";
	}
	
}
