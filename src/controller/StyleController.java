package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StyleController {

	
	@RequestMapping("/style")
	public String showStyle(){
		return "style";
	}
	
}