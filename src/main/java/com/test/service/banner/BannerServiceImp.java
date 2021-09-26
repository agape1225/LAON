package com.test.service.banner;
import com.test.dao.ActivitiesDao;
import com.test.dao.BannerDao;
import com.test.dto.ActivitiesDto_DB;
import com.test.dto.BannerDto;
import com.test.service.activities.ActivitiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BannerServiceImp implements BannerService {

    @Autowired
    BannerDao bannerDao;

    @Override
    public void addBanner(String poster, String paragraph) {
        bannerDao.addBanner(poster, paragraph);
    }

    @Override
    public ArrayList<BannerDto> getBanner() {

        return bannerDao.getBanner();
    }

    @Override
    public void deleteBanner(String number) {

        bannerDao.deleteBanner(number);

    }
}
