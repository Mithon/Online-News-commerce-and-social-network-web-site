package edu.daffodil.ssb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.daffodil.ssb.dao.Country;
import edu.daffodil.ssb.services.CountryService;

@Controller
public class CountryController {
	
	@Autowired
	private CountryService countryService;
	
	
	public void setCountryService(CountryService countryService) {
		this.countryService = countryService;
	}


	@RequestMapping(value="/showCountryList",method=RequestMethod.POST)
	public @ResponseBody List<Country> showCountry(){		
		
		return countryService.showCountry();
			
	}

}
