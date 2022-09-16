package com.example.demo.controller;

import com.example.demo.entity.Demo;
import com.example.demo.repository.DemoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    DemoRepository demoRepository;


    @RequestMapping(value = { "/{boardId}/", "/{boardId}" }, method = RequestMethod.GET )
    public String articleList(Model model){
        System.out.println("1111111111111111");
        List<Demo> articleList = demoRepository.findAll();
        System.out.println(articleList);
        model.addAttribute("articleList",articleList);
        return "list";
    }

    @RequestMapping(value = { "/ajax1" }, method = RequestMethod.POST)
    @ResponseBody
    public String articleList1(String title){
        System.out.println("222222222");
        System.out.println(title);
        List<Demo> articleList1 = demoRepository.findByTitle(title);
        String b = "성공";
        System.out.println(articleList1);
        return title;
    }

    @RequestMapping(value = { "/{boardId}/", "/{boardId}" }, method = RequestMethod.POST )
    public String boardSave(Demo demo){
        demoRepository.save(demo);
        return "redirect:/{boardId}";
    }
}

