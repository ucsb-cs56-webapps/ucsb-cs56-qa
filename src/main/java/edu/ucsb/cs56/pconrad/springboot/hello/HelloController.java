package edu.ucsb.cs56.pconrad.springboot.hello;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    // DONE
    @RequestMapping("/")
    public String login() {
        return "login";
    }

    // TODO
    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    // TODO
	@RequestMapping("/home")
    public String home() {
        return "home";
    }

    // TODO
	@RequestMapping("/ask-question")
    public String questions() {
        return "ask-question";
    }

    // TODO
    @RequestMapping("/profile")
    public String profile() {
        return "profile";
    }

    // DONE
    @RequestMapping(value="/question-id={qid}", method = RequestMethod.GET)
    public ModelAndView questionPage(@PathVariable("qid") String qid, Model model) {
        if (qid.equals("")) { return new ModelAndView("redirect:/question-list"); }
        Question q = DatabaseAPI.findQuestion(qid);
        if (q == null) { return new ModelAndView("redirect:/question-list"); }

        Map<String, Object> params = new HashMap<>();
        params.put("question", q.toStringList());

        List<String> answerList = DatabaseAPI.retrieveQuestionAnswerList(qid);
        List<List<String>> as = new ArrayList<List<String>>();
        List<String> us = new ArrayList<>();
        for (String aid : answerList) {
            Answer a = DatabaseAPI.findAnswer(aid);
            as.add(a.toStringList());
            User u = DatabaseAPI.findUser(a.getAnswererid());
            us.add(u.getName());

        }
        params.put("answers", as);
        params.put("answerer", us);

        return new ModelAndView("question-page", params);
    }

    // DONE
    @RequestMapping(value="/new_answer_qid={qid}", method = RequestMethod.POST)
    public ModelAndView questionPage(@PathVariable("qid") String qid, @ModelAttribute("newanswer") Answer answer, Model model) {
        if (!answer.hasQCAfield()) {
            return new ModelAndView("redirect:/question-id=" + qid);
        }
        System.out.println(answer);

        Answer newAnswer = new Answer(qid, answer.getContent(), answer.getAnswererid());
        DatabaseAPI.composeAnswer(newAnswer);

        return new ModelAndView("redirect:/question-id=" + qid);
    }

    // DONE
    @RequestMapping(value = "/question-list", method = RequestMethod.GET)
    public ModelAndView questionList() {
        List<Question> questions = DatabaseAPI.retrieveQuestionList();

        List<List<String>> qs = new ArrayList<List<String>>();
        for (Question q : questions) {
            qs.add(q.toStringList());
        }

        Map<String, Object> params = new HashMap<>();
        params.put("questions", qs);

        return new ModelAndView("question-list", params);
    }


    /* DEBUG */
    // DEBUG
    @RequestMapping(value = "/create_user", method = RequestMethod.GET)
    public ModelAndView testCreateUser() {
        return new ModelAndView("testCreateUser", "user", new User());
    }

    // DEBUG
    @RequestMapping(value = "/create_user", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user") User user, BindingResult result, ModelMap model) {
        if (result.hasErrors() || !user.hasAllField()) {
            return "redirect:/create_user";
        }

        // System.out.println(user);
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
        // if (uid.equals("")) { return "redirect:/"; }
        User user = DatabaseAPI.findUser(uid);
        if (user == null) { return "redirect:/"; }

        model.addAttribute("name", user.getName());
        model.addAttribute("uid", user.getUserid());
        model.addAttribute("email", user.getEmail());

        return "testUserProfile";
    }

    // DEBUG
    @RequestMapping("/test-qlist")
    public ModelAndView testQList() {
        List<Question> questions = DatabaseAPI.retrieveQuestionList();

        List<List<String>> qs = new ArrayList<List<String>>();
        for (Question q : questions) {
            qs.add(q.toStringList());
        }

        Map<String, Object> params = new HashMap<>();
        params.put("questions", qs);

        return new ModelAndView("test-qlist", params);
    }

}
