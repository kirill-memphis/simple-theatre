package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.TheatreDAO;
import entity.User;

@Controller
public class SpringLoginController {
	
	@Autowired
	private TheatreDAO theatreDAO;
	
	@RequestMapping(value = "/autorise", method = RequestMethod.POST)
	public String autorisation(@RequestParam("login") String login, 
			                   @RequestParam("password") String password, Model model){

        User user = new User();
        user = theatreDAO.getUser(login, password);
		
		if ((user != null)){
			model.addAttribute("name", user.getUserName());
			return "book";
		} else {
			return "error";
		}
		
	}

}
