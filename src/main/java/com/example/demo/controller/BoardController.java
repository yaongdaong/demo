package com.example.demo.controller;

import com.example.demo.entity.Demo;
import com.example.demo.repository.DemoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller  // 컨트롤러 bean
public class BoardController {

    @Autowired
    DemoRepository demoRepository;

    // 등록
    // url과 method 매핑
    @RequestMapping(value = {"/{boardId}/", "/{boardId}"}, method = RequestMethod.GET)
    public String articleList(Model model) {
        System.out.println("ddd1111111111111111");
        List<Demo> articleList = demoRepository.findAll();
//        System.out.println(articleList);
        // attributeName 괄호 내용에서 데이터넘어감
        model.addAttribute("articleList", articleList);
        // list.jsp로 포워드
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
    // @RequestParam 개별변수
    // @ModelAttribute 객체
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


        return "redirect:/list";
    }

    @RequestMapping(value = {"/read"}, method = RequestMethod.POST)
    @ResponseBody
    public String Read(@RequestParam(value = "list") List<String> list) {
        System.out.println("read " );
        List<Demo> read = demoRepository.findAll();
        String b = "성공";

        return "redirect:/list";
    }
    // 목록


}

