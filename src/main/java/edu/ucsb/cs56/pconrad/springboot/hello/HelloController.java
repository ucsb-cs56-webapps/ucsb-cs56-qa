package edu.ucsb.cs56.pconrad.springboot.hello;

import java.net.URI;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    @RequestMapping("/test")
    public String test() {
        /* DEBUG
        // DatabaseAPI.saveDataDemo();
        // DatabaseAPI.readDataDemo();

        // User a = new User("u1","u1@ucsb.edu","u001","a0a0a0");
        // DatabaseAPI.createUser(a);
        // User b = new User("u2","u2@ucsb.edu","u002","b0b0b0");
        // DatabaseAPI.createUser(b);

        // a = DatabaseAPI.findUser("u002");
        // b = DatabaseAPI.findUser("u001");

        // Answer a = new Answer("2018:11:30:10:18:15_u002","content01","u001");
        // Answer b = new Answer("2018:11:30:10:18:15_u001","content02","u002");

        // DatabaseAPI.composeAnswer(a);
        // DatabaseAPI.composeAnswer(b);

        // System.out.println(DatabaseAPI.retrieveUserQuestionList("u001"));
        // System.out.println(DatabaseAPI.retrieveUserQuestionList("u002"));

        System.out.println(DatabaseAPI.findAnswer("2018:11:30:11:59:24_u002"));

        System.out.println(DatabaseAPI.retrieveUserAnswerList("u001"));

        System.out.println(DatabaseAPI.retrieveQuestionAnswerList("2018:11:30:10:18:15_u001"));
        */
        System.out.println(DatabaseAPI.retrieveQuestionList());

        return "test";
    }

    // DEBUG
    @PostMapping()

    // DEBUG
    @RequestMapping(value="/testuid={uid}", method = RequestMethod.GET)
    public String testUserProfile(@PathVariable("uid") String uid, Model model) {
        User user = DatabaseAPI.findUser(uid);
        /*
        String template = "/test/uid={uid}";
        UriComponents uc = UriComponentsBuilder.fromUriString(template).build();
        URI location = uc.toUri();
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setLocation(location);
        responseHeaders.set("name", user.getName());
        responseHeaders.set("uid", user.getUserid());
        responseHeaders.set("email", user.getEmail());
        return new ResponseEntity<String>(
                getTemplate(),
                responseHeaders);
        */
        model.addAttribute("name", user.getName());
        model.addAttribute("uid", user.getUserid());
        model.addAttribute("email", user.getEmail());

        return "testUserProfile";
    }

}
