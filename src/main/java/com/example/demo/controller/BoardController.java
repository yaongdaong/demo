package com.example.demo.controller;

import com.example.demo.entity.Demo;
import com.example.demo.repository.DemoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class BoardController {

    @Autowired
    DemoRepository demoRepository;

    // 등록
    @RequestMapping(value = {"/{boardId}/", "/{boardId}"}, method = RequestMethod.GET)
    public String articleList(Model model) {
        System.out.println("1111111111111111");
        List<Demo> articleList = demoRepository.findAll();
//        System.out.println(articleList);
        model.addAttribute("articleList", articleList);
        return "list";
    }

    // 등록 처리
    @RequestMapping(value = {"/{boardId}/", "/{boardId}"}, method = RequestMethod.POST)
    public String boardSave(Demo demo) {
        demoRepository.save(demo);
        return "redirect:/{boardId}";
    }

    // ajax로 등록하기
    @RequestMapping(value = {"/create"}, method = RequestMethod.POST)
    @ResponseBody
    public String Create(@RequestParam(value = "list") List<String> list) {
        System.out.println("222222222");
        System.out.println(list);
        String a = "123";

        // 데이터 저장
        Date date = new Date();
        Demo demo = new Demo();
        demo.setTitle(list.get(0));
        demo.setContent(list.get(1));
        demo.setWriteDate(date);

        System.out.println(demo);
        demoRepository.save(demo);


        return "성공";
    }

    @RequestMapping(value = {"/read"}, method = RequestMethod.GET)
    @ResponseBody
    public String Read(@RequestParam(value = "list") List<String> list) {
        List<Demo> read = demoRepository.findAll();
        String b = "성공";
        System.out.println(read);
        return "list";
    }
    // 목록


}

