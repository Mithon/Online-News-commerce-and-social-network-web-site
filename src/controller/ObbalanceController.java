package edu.daffodil.ssb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.daffodil.ssb.dao.Obbalance;
import edu.daffodil.ssb.dao.ObbalanceSub;
import edu.daffodil.ssb.services.ObbalanceService;
import edu.daffodil.ssb.services.ObbalanceSubService;

@Controller
public class ObbalanceController {

	@Autowired
	private ObbalanceService obbalanceService;	
	
	@Autowired
	private ObbalanceSubService obbSubService;
	
	
	public void setObbalanceService(ObbalanceService obbalanceService) {
		this.obbalanceService = obbalanceService;
	}

	@RequestMapping(value="/obbalance")
	public String showPage(){
		return "obbalance";
	}
	
	
	
	@RequestMapping(value="/saveObbalance/{id}",method=RequestMethod.POST)
	public @ResponseBody String saveObbalance(@RequestBody Obbalance obbalance, @PathVariable("id") int id){		
		
		if(id < 1) {
			obbalanceService.saveObbalance(obbalance);
		} else {
			obbalance.setId(id);
			obbalanceService.updateObbalance(obbalance);
		}
		
		return "!! Record Saved Successfully";
	}
	
	
	@RequestMapping(value="/deleteObbalance",method=RequestMethod.POST)
	public @ResponseBody String deleteObbalance(@RequestParam("id") int id){	
		
		Obbalance obbalance  = obbalanceService.showObbalanceById(id);
		
		if(obbalance != null) {
			obbalanceService.deleteObbalance(obbalance);
		}
		
		
		return "successfully deleted";
			
	}
	@RequestMapping(value="/showObbalanceList",method=RequestMethod.POST)
	public @ResponseBody List<Obbalance> showObbalance(){		
		
		return obbalanceService.showObbalance();
			
	}
	
	
	@RequestMapping(value="/showObbalanceById",method=RequestMethod.POST)
	public @ResponseBody Obbalance showObbalanceById(@RequestParam("pId") int pId){		
		
		return obbalanceService.showObbalanceById(pId);
			
	}
	
	
	
			@RequestMapping(value="/showControllHeads",method=RequestMethod.POST)
			public @ResponseBody List<Obbalance> showControllHeads(){		
				
				return obbalanceService.showControllHeads();
					
			}
			
			
	@RequestMapping(value="/showControllSubs",method=RequestMethod.POST)
	public @ResponseBody List<ObbalanceSub> showControllSubs(@RequestParam("id") String id){	
		System.out.println(id);
		return obbSubService.showControllSubs(id);
	}
	
}