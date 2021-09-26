package com.test.mapper;

import com.test.dto.BannerDto;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface BannerMapper {

    void addBanner(@Param("poster") String poster, @Param("paragraph") String paragraph);
    void deleteBanner(@Param("number") String number);
    ArrayList<BannerDto> getBanners();
}
