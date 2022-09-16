package com.example.demo.controller;

import com.example.demo.entity.Demo;
import com.example.demo.repository.DemoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class DemoController {

    @GetMapping("/")
    public String demo() {

        return "demo";
    }

    @Autowired
    DemoRepository demoRepository;


        @RequestMapping(value = { "/{boardId}/", "/{boardId}" }, method = RequestMethod.GET )
        public String articleList(@PathVariable String title, Model model){
            System.out.println("1111111111111111");
            List<Demo> articleList = demoRepository.findAll();
            System.out.println(articleList);
            model.addAttribute("articleList",articleList);
            return "list";
        }

        @RequestMapping(value = { "/{boardId}/", "/{boardId}" }, method = RequestMethod.POST )
        public String boardSave(Demo demo){
            demoRepository.save(demo);
            return "redirect:/{boardId}";
        }

    }


