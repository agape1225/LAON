package com.test.controller;

import com.test.dto.ActivitiesDto;
import com.test.dto.BannerDto;
import com.test.service.activities.ActivitiesService;
import com.test.service.banner.BannerService;
import com.utility.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.ArrayList;

@Controller
public class BannerController {

    @Autowired
    BannerService bannerService;

    @Autowired
    ServletContext servletContext;

    Utility utility = new Utility();


    @RequestMapping(value = "/admin/create_banner/insert_banner.do", method = RequestMethod.POST)
    public String insert_banner(Model model, @RequestParam(value = "poster") MultipartFile poster,
                                @RequestParam(value = "paragraph") String paragraph){
        try{

            System.out.println("Start insert_banner");
            System.out.println(poster);
            System.out.println(paragraph);



            String webappRoot = servletContext.getRealPath("/");
            String relativeFolder =  "resources" + "/" + "activities_poster" + "/" + utility.getData() +poster.getOriginalFilename() + utility.getData();;
            String filename = webappRoot + relativeFolder;
            FileCopyUtils.copy(poster.getBytes(), new File(filename));

            /*activitiesService.addActivities(aDto.getName(), aDto.getCategory(), aDto.getTarget(),
                    aDto.getDate(), aDto.getLink(), relativeFolder, aDto.getBenefits(), aDto.getHost());*/

            bannerService.addBanner(relativeFolder, paragraph);

            System.out.println(filename);
            System.out.println("End insert_activities");

        }catch (Exception e){
            e.printStackTrace();
        }
        return "/admin/banner_table";
    }

}
