package edu.ucsb.cs56.pconrad.springboot.hello;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
// import javax.servlet.http.Cookie;
// import javax.servlet.http.HttpServletResponse;
// import javax.servlet.http.HttpServletRequest;

// import org.springframework.http.HttpEntity;
// import org.springframework.http.HttpHeaders;
// import org.springframework.http.HttpStatus;
// import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
// import org.springframework.web.bind.annotation.CookieValue;
// import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
// import org.springframework.web.util.UriComponents;
// import org.springframework.web.util.UriComponentsBuilder;

@Controller
public class HelloController {
    // DONE
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String login() {
        return "login";
    }

    // DONE
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String requestLogin(@ModelAttribute("loginuser") User user, Model model) {
        if (user == null) {
            return "login";
        }
        if (!user.hasUPfield() || !DatabaseAPI.requestLogin(user)) {
            return "login";
        }
        return "redirect:/user-id=" + user.getUserid();
    }

    // DONE
    @RequestMapping(value = "/create_user", method=RequestMethod.GET)
    public ModelAndView createUserPage() {
        Map<String, Object> params = new HashMap<>();
        params.put("message", "");
        return new ModelAndView("create-user", params);
    }

    // TODO
    @RequestMapping(value="/create_user", method=RequestMethod.POST)
    public ModelAndView createUser(@ModelAttribute("user") User user, ModelMap model) {
        Map<String, Object> params = new HashMap<>();
        if (!user.hasAllField()) {
            params.put("message", "You have to fill all fields!");
            return new ModelAndView("create-user", params);
        } else if (DatabaseAPI.userExists(user.getUserid())) {
            params.put("message", "This UserID has been registered!");
            return new ModelAndView("create-user", params);
        }
        DatabaseAPI.createUser(user);
        user = DatabaseAPI.findUser(user.getUserid());
        params.put("name", user.getName());
        params.put("uid", user.getUserid());
        params.put("email", user.getEmail());

        return new ModelAndView("redirect:/user-id=" + user.getUserid(), params);
    }

    // DONE
    @RequestMapping(value="/profile-uid={uid}", method=RequestMethod.GET)
    public ModelAndView profile(@PathVariable("uid") String uid) {
        User user = DatabaseAPI.findUser(uid);
        if (user == null) { return new ModelAndView("redirect:/"); }

        List<String> qidList = DatabaseAPI.retrieveUserQuestionList(user.getUserid());
        List<List<String>> questions = new ArrayList<>();
        for (String qid : qidList) {
            questions.add(DatabaseAPI.findQuestion(qid).toStringList());
        }

        Map<String, Object> params = new HashMap<>();
        params.put("uid", user.getUserid());
        params.put("name", user.getName());
        params.put("email", user.getEmail());
        params.put("questions", questions);
        return new ModelAndView("profile", params);
    }

    // DONE
    @RequestMapping(value="/profile-uid={uid}", method=RequestMethod.POST)
    public ModelAndView changeProfile(@PathVariable("uid") String uid, @ModelAttribute("newName") String newName) {
        if (newName.equals("")) { return new ModelAndView("redirect:/profile-uid=" + uid); }
        DatabaseAPI.changeUserName(uid, newName);
        return new ModelAndView("redirect:/profile-uid=" + uid);
    }

    // DONE
	@RequestMapping(value="/ask-question", method=RequestMethod.GET)
    public String questions() {
        return "ask-question";
    }

    // DONE
    @RequestMapping(value="/ask-question", method=RequestMethod.POST)
    public ModelAndView questions(@ModelAttribute("newquestion") Question question, Model model) {
        if (!question.hasTCAfield() || !DatabaseAPI.isValueUser(question.getAskerid())) {
            return new ModelAndView("redirect:/ask-question");
        }
        Question newQuestion = new Question(question.getTitle(), question.getContent(), question.getAskerid());
        DatabaseAPI.composeQuestion(newQuestion);
        return new ModelAndView("redirect:/question-id=" + question.getQid());
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
        if (!answer.hasQCAfield() || !DatabaseAPI.isValueUser(answer.getAnswererid())) {
            return new ModelAndView("redirect:/question-id=" + qid);
        }
        Answer newAnswer = new Answer(qid, answer.getContent(), answer.getAnswererid());
        DatabaseAPI.composeAnswer(newAnswer);
        return new ModelAndView("redirect:/question-id=" + qid);
    }

    // DONE
    @RequestMapping(value={"/question", "/question-list", "/question-page", "/home"}, method=RequestMethod.GET)
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

}
