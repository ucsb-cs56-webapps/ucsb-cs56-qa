package edu.ucsb.cs56.pconrad.springboot.hello;

import java.net.URI;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

@Controller
public class HelloController {
    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

	@RequestMapping("/home")
    public String home() {
        return "home";
    }

	@RequestMapping("/questions")
    public String questions() {
        return "questions";
    }

    @RequestMapping("/profile")
    public String profile() {
        return "profile";
    }

    // DEBUG
    @RequestMapping(value = "/create_user", method = RequestMethod.GET)
    public ModelAndView testCreateUser() {
        return new ModelAndView("testCreateUser", "user", new User());
    }

    // DEBUG
    @RequestMapping(value = "/create_user", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user") User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) { return "error"; }

        System.out.println(user);

        DatabaseAPI.createUser(user);

        user = DatabaseAPI.findUser(user.getUserid());
        model.addAttribute("name", user.getName());
        model.addAttribute("uid", user.getUserid());
        model.addAttribute("email", user.getEmail());

        return "redirect:/testuid=" + user.getUserid();
    }

    // DEBUG
    @RequestMapping(value="/testuid={uid}", method = RequestMethod.GET)
    public String testUserProfile(@PathVariable("uid") String uid, Model model) {
        User user = DatabaseAPI.findUser(uid);
        model.addAttribute("name", user.getName());
        model.addAttribute("uid", user.getUserid());
        model.addAttribute("email", user.getEmail());

        return "testUserProfile";
    }

    // DEBUG
    // @RequestMapping

}
