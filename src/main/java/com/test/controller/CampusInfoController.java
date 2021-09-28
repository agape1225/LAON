package com.test.controller;

import com.test.dto.ActivitiesDto;
import com.test.dto.CampusinfoDto;
import com.utility.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletContext;
import java.io.File;

@Controller
public class CampusInfoController {

    @Autowired
    ServletContext servletContext;

    Utility utility = new Utility();

    @GetMapping("/front/campustest")
    public String create_campusinfo(Model model){
        try{

        }catch (Exception e){
            e.printStackTrace();
        }
        return "front/campustest";
    }

    @RequestMapping(value = "/front/campustest", method = RequestMethod.POST)
    public String insert_activities(Model model,
                                    CampusinfoDto cDto){
        try{
            /*String webappRoot = servletContext.getRealPath("/");
            String relativeFolder =  "resources" + "/" + "activities_poster" + "/"  + utility.getData() + (aDto.getPoster()).getOriginalFilename();
            String filename = webappRoot + relativeFolder;
            FileCopyUtils.copy((cDto.getPoster()).getBytes(), new File(filename));*/

            activitiesService.addActivities();


        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin";
    }
}
