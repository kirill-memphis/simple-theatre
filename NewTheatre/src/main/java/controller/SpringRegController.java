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
public class SpringRegController {
	
	@Autowired
	private TheatreDAO theatreDAO;
	
	@RequestMapping(value = "/registrate", method = RequestMethod.POST)
	public String autorisation(@RequestParam("login") String login, 
			                   @RequestParam("password") String password,
			                   @RequestParam("password2") String password2,
			                   @RequestParam("name") String name, Model model){
		
        Long regResult = null;
        
        if (password.equals(password2)){
        	
        	User newUser = new User();
            newUser.setUserName(name);
            newUser.setUserLogin(login);
            newUser.setUserPass(password);
           
            regResult = (Long)theatreDAO.addUser(newUser);
        }
        
        if (regResult != null){
    	    model.addAttribute("name", name);
    		return "book";
    		
    	} else {
    		return "error";
        }
	}
}
