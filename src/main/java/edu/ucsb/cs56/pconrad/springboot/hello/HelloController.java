package edu.ucsb.cs56.pconrad.springboot.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
    @RequestMapping("/")
    public String login() {
	return "login";
    }
    
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/ask")
    public String ask() {
        return "ask";
    }

    @RequestMapping("profile")
    public String profile() {
        return "profile";
    }

	
}
