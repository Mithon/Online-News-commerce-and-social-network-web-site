package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

	
	@RequestMapping("/video")
	public String showVideo(){
		return "video";
	}
	
}