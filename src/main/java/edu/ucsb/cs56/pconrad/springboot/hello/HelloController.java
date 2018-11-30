package edu.ucsb.cs56.pconrad.springboot.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

        return "test";
    }


}
