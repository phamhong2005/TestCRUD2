package com.codegym.controller;

import com.codegym.model.Student;
import com.codegym.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @GetMapping("/home")
    public ModelAndView showAll() {
        List<Student> list = studentService.findAll();
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("lits", list);
        return modelAndView;
    }

    @GetMapping("/create")
    public ModelAndView showAdd(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        ModelAndView modelAndView = new ModelAndView("create");
        return modelAndView;
    }

    @PostMapping("/create")
    public String Add(@ModelAttribute("student") Student student) {
        System.out.println(student);
        studentService.add(student);
        return "redirect:/home";
    }

    @GetMapping("/update&id={id}")
    public ModelAndView showUpdate(@PathVariable int id,Model model) {
        Student student = studentService.StudentFindById(id);
        model.addAttribute("student",student);
        ModelAndView modelAndView = new ModelAndView("update");
//        modelAndView.addObject("students", student);
        return modelAndView;
    }

    @PostMapping("update&id={id}")
    public String update(Student student) {
        System.out.println(student.getId());
        studentService.update(student.getId(), student);
        return "redirect:/home";
    }

    @GetMapping("delete&id={id}")
    public String delete(@PathVariable("id") int id) {
        studentService.delete(id);
        return "redirect:/home";
    }


}
