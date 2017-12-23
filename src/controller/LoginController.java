package edu.daffodil.ssb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

/*	private UsersService usersService;

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	} */

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}
	
	
/*	@RequestMapping("/denied")
	public String showDenied() {
		return "denied";
	}

	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}

	@RequestMapping("/newaccount")
	public String showNewAccount(Model model) {
		model.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping("/admin")
	public String showAdmin(Model model) {
		
		List<User> users = usersService.getAllUsers();

		model.addAttribute("users", users);

		return "admin";
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.POST)
	public String doCreate(@Validated(FormValidationGroup.class) User user, BindingResult result) {

		if (result.hasErrors()) {
			return "newaccount";
		}

		user.setAuthority("ROLE_USER");
		user.setEnabled(true);

		if (usersService.exists(user.getUsername())) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}

		try {
			usersService.create(user);
		} catch (DuplicateKeyException e) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}

		return "accountcreated";
	} */
}
