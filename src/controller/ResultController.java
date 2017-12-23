package edu.daffodil.ssb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.daffodil.ssb.dao.StudentMarks;
import edu.daffodil.ssb.services.ResultServices;

@Controller
public class ResultController {
	
	@Autowired
	private ResultServices resultService;
	
	public void setResultService(ResultServices resultService) {
		this.resultService = resultService;
	}
	

	@RequestMapping(value="/showresult")
	public String showResult() {
		
		return "showresult";
	}
	
	
	@RequestMapping(value="/studentresult")
	public String studentResult() {
		
		return "studentresult";
	}
	
	@RequestMapping(value="/saveResult", method=RequestMethod.POST)
	public @ResponseBody String saveResult(@RequestBody StudentMarks studentMarks1) {
		System.out.println(studentMarks1.toString());
		resultService.saveResult(studentMarks1);
		return "Result Saved Successfully!!";
	}
	
	@RequestMapping(value="/showAllResult")
	public String showAllResult() {
		
		return "showallresult";
	}
	
	

}
