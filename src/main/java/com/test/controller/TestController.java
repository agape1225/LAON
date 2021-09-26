package com.test.controller;

import com.test.dao.TestDao;
import com.test.dto.BannerDto;
import com.test.dto.TestDto;
import com.test.service.banner.BannerService;
import com.test.service.test.TestService;
import com.test.util.firebase.FirebaseMessagingSnippets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class TestController {

    @Autowired
    BannerService bannerService;
    @Autowired
    TestService testService;
    @Autowired
    FirebaseMessagingSnippets firebaseMessagingSnippets;
    @Autowired
    TestDao testDao;

    @GetMapping("/dbTest")
    public void testDB() {
        testDao.addItem("zzz");
    }
    @GetMapping("/")
    public String main(Model model){
        try{

            ArrayList<BannerDto> bannerList = bannerService.getBanner();
            model.addAttribute("banner1", bannerList.get(0));
            model.addAttribute("banner2", bannerList.get(1));

        }catch (Exception e){
            e.printStackTrace();
        }
        return "front/index";
    }

    @GetMapping("/test.do")
    public String test(Model model){
        try{
            System.out.println("test.do Controller");
            ArrayList<TestDto> itemList = testService.getItemList();
            model.addAttribute("itemList", itemList);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "test";
    }

    @RequestMapping(value = "/get.do", method = RequestMethod.GET)
    public String get(@RequestParam(value = "data") String data){
        try{
            System.out.println("controller: " + data);
            testService.addItem(data);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/test.do";
    }

    @RequestMapping(value = "/post.do", method = RequestMethod.POST)
    public String post(@RequestParam(value = "data") String data){
        try{
            System.out.println("post방식 data: " + data);
            testService.addItem(data);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/test.do";
    }

    @RequestMapping(value = "/delete.do", method = RequestMethod.GET)
    public String delete(@RequestParam(value = "number") String number){
        try{
            System.out.println("number: " + number);
            testService.deleteItem(number);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/test.do";
    }

    @GetMapping("/fcm.do")
    public String fcm(@RequestParam(value = "fcm") String fcm, @RequestParam(value = "title") String title, @RequestParam(value = "content") String content, HttpServletRequest req){
        try{
            System.out.println("fcm: " + fcm);
            System.out.println("title: " + title);
            System.out.println("content: " + content);
            firebaseMessagingSnippets.test_send_FCM(fcm, title, content, req);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/";
    }
}
