package com.test.service.banner;

import com.test.dto.ActivitiesDto_DB;
import com.test.dto.BannerDto;

import java.util.ArrayList;

public interface BannerService {
    void addBanner(String poster, String paragraph);

    ArrayList<BannerDto> getBanner();

    void deleteBanner(String number);
}
