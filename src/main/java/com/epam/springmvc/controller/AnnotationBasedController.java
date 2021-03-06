package com.epam.springmvc.controller;

import com.epam.springmvc.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/test") //now to invoke "someMethod1" request should like this - test/someaction1
public class AnnotationBasedController {

    @RequestMapping("/someaction1")
    public ModelAndView someMethod1() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp1");

        return mv;
    }

    @RequestMapping("/someaction2") // if more than one method, it is multiaction controller
    public ModelAndView someMethod2() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp1");

        return mv;
    }

    @RequestMapping("/someaction3/{country}/{userName}") // instead of "country" and "userName" we can request anything. Example test/someaction3/Kazakhstan/Aset
    public ModelAndView someMethod3(@PathVariable("country") String country ,@PathVariable("userName") String name) { //also we can use Map, but we have to add <mvc:annotation-driven/> to ...-servlet.xml
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp1");
        mv.addObject("msg",country);
        mv.addObject("msg2",name);

        return mv;
    }

    @RequestMapping(value = "/someaction4", method = RequestMethod.GET)
    public ModelAndView someMethod4(@ModelAttribute("student") Student student1, @RequestHeader HashMap<String, String> allHeaders, @CookieValue("JSESSIONID") String cookie) {
        ModelAndView mv = new ModelAndView();
//        mv.addObject("student", new Student()); == @ModelAttribute("student") Student student1 if no data from client. @ModelAttribute - - For access to an existing attribute in the model or instantiated if not present.
        mv.setViewName("testjsp1");

        for(Map.Entry<String, String> entry : allHeaders.entrySet())
        {
            System.out.println(entry.getKey() + " - " + entry.getValue());
        }

        System.out.println(cookie);

        return mv;
    }

    @RequestMapping(value = "/someaction5", method = RequestMethod.POST)
    public ModelAndView someMethod5(@RequestParam("studentName") String name, @RequestParam(value = "studentHobby", defaultValue = "Music") String hobby) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp2");
        mv.addObject("name", name);
        mv.addObject("hobby", hobby);

        return mv;
    }

    @RequestMapping(value = "/someaction6", method = RequestMethod.POST)
    public ModelAndView someMethod6(@ModelAttribute("student") Student student1, BindingResult result) { //Binding data, Student class fields names should be equal to corresponding request parameter names
        if(result.hasErrors()) {
            ModelAndView mv = new ModelAndView("testjsp1");
            return mv;
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp2");

        return mv;
    }

    /*
    @InitBinder
    public void initBinder(WebDataBinder binder) { // Customize binding
        binder.setDisallowedFields(new String[] {"studentMobile"}); //ignores field

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        binder.registerCustomEditor(Date.class, "studentDOB", new CustomDateEditor(dateFormat, false)); // changes format
    }*/

    @RequestMapping(value = "/someaction7", method = RequestMethod.POST)
    public ModelAndView someMethod7(@Valid @ModelAttribute("student") Student student1, BindingResult result, HttpServletRequest request) { // @Valid works cuz <mvc:annotation-driven/>, instead of this tag we can set validator in @InitBinder method
        if(result.hasErrors()) {
            ModelAndView mv = new ModelAndView("testjsp1");

            return mv;
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp2");
        request.getSession().setAttribute("student", student1);

        return mv;
    }

    @RequestMapping(value = "/someaction8", method = RequestMethod.GET)
    public ModelAndView someMethod7() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testjsp2");

        return mv;
    }

}
