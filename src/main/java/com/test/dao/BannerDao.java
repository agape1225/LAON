package com.test.dao;

import com.test.dto.BannerDto;
import com.test.dto.TestDto;
import com.test.mapper.BannerMapper;
import com.test.mapper.TestMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class BannerDao {
    @Autowired
    SqlSession sqlSession;

    public ArrayList<BannerDto> getBanner(){
        try{
            System.out.println("getBanner Dao do");
            BannerMapper bannerMapper = sqlSession.getMapper(BannerMapper.class);
            ArrayList<BannerDto> bannerList = bannerMapper.getBanners();
            System.out.println("getBanner Dao end");
            return bannerList;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public void deleteBanner(String number){
        try{
            //TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
            BannerMapper bannerMapper = sqlSession.getMapper(BannerMapper.class);
            //testMapper.deleteItem(number);
            bannerMapper.deleteBanner(number);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void addBanner(String poster, String paragraph){
        try{
            //TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
            //System.out.println("dao: " + data);
            BannerMapper bannerMapper = sqlSession.getMapper(BannerMapper.class);
            System.out.println("paragraph: " + paragraph);
            bannerMapper.addBanner(poster, paragraph);

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
