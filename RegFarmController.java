package controllers;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farmbidder.model.Farmer;
import com.farmerbidder.service.IFarmerService;
@Controller
@Component
public class RegFarmController {
	private IFarmerService farmerService;
	@Autowired
	@Qualifier(value="personService")
	public void setFarmerService(IFarmerService fs) {
		this.farmerService = fs;
	}
	@RequestMapping(value="/farmerReg")
	public String gotofarmerregpage() {
	
		return "farmerregform";
	}
	// For add and update person both
			@RequestMapping(value = "/farmer/reg", 
					method = RequestMethod.POST)
			
			public String farmerReg(
					@ModelAttribute("farmer") 
					@Valid Farmer f, 
					BindingResult result, 
					Model model) {
				if (!result.hasErrors()) {
				
						// new person, add it
						this.farmerService.farmerReg(f);
					} 
					
					return "redirect:/farmer";
				}
				
	/*@RequestMapping(value="farmer/add", method = RequestMethod.POST)
	public String farmerRegister(@ModelAttribute("farmer") 
	@Valid Farmer f, 
	BindingResult result, 
	Model model)
	{
		if (!result.hasErrors()) {
				// new person, add it
				this.farmerService.addFarmer(f);
			} else {
		logger.
		
		
		return null;
	}
	public String farmerReg(Model model) {
		model.addAttribute("person", new Farmer());
		model.addAttribute("farmerReg",this.farmerService.farmerReg());
		return "farmer";
	}*/
}
