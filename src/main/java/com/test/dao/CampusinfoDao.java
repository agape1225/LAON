package com.test.dao;

import com.test.dto.CampusinfoDto_DB;
import com.test.mapper.ActivitiesMapper;
import com.test.mapper.CampusinfoMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class CampusinfoDao {

    @Autowired
    SqlSession sqlSession;

    public void addCampusinfo(String title, String subtitle, String contexts,String host,
                              String department,String file){
        try{

            System.out.println("start addCampusinfo Dao");
            CampusinfoMapper CampusinfoMapper = sqlSession.getMapper(CampusinfoMapper.class);
            CampusinfoMapper.addCampusinfo(title, subtitle, contexts, host, department, file);
            System.out.println("end addCampusinfo Dao");

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public ArrayList<CampusinfoDto_DB> getCampusinfo(){
        try{

            System.out.println("start getCampusinfo Dao");
            CampusinfoMapper CampusinfoMapper = sqlSession.getMapper(CampusinfoMapper.class);
            System.out.println("end getCampusinfo Dao");
            return CampusinfoMapper.getCampusinfo();

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<CampusinfoDto_DB> getCampusinfo_by_department(String num){
        try{

            System.out.println("start getCampusinfo_by_department Dao");
            CampusinfoMapper CampusinfoMapper = sqlSession.getMapper(CampusinfoMapper.class);
            System.out.println("end getCampusinfo_by_department Dao");
            return CampusinfoMapper.getCampusinfo_by_department(num);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void deleteCampusinfo(String number){
        try {
            System.out.println("start deleteCampusinfo Dao");
            CampusinfoMapper CampusinfoMapper = sqlSession.getMapper(CampusinfoMapper.class);
            CampusinfoMapper.deleteCampusinfo(number);
            System.out.println("end deleteCampusinfo Dao");
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    public void updateCampusinfo(String title, String subtitle, String contexts,String host,
                                 String department,String file){
        try {
            System.out.println("start updateCampusinfo Dao");
            CampusinfoMapper CampusinfoMapper = sqlSession.getMapper(CampusinfoMapper.class);
            CampusinfoMapper.updateCampusinfo(title, subtitle, contexts, host, department, file);
            System.out.println("end updateCampusinfo Dao");

        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
