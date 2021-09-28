package com.test.service.campus_info;

import com.test.dao.CampusinfoDao;
import com.test.dto.CampusinfoDto_DB;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;

public class Campus_infoServiceImp implements Campus_infoService {

    @Autowired
    CampusinfoDao campusinfoDao;

    @Override
    public void addCampusinfo(String title, String subtitle, String contexts, String host, String department, String file) {

        campusinfoDao.addCampusinfo(title, subtitle, contexts, host, department, file);
    }

    @Override
    public ArrayList<CampusinfoDto_DB> getCampusinfo() {
        return campusinfoDao.getCampusinfo();
    }

    @Override
    public void deleteCampusinfo(String number) {
        campusinfoDao.deleteCampusinfo(number);
    }

    @Override
    public void updateCampusinfo(String title, String subtitle, String contexts, String host, String department, String file) {
        campusinfoDao.updateCampusinfo(title, subtitle, contexts, host, department, file);
    }

    @Override
    public ArrayList<CampusinfoDto_DB> getCampusinfo_by_department(String department){
        return campusinfoDao.getCampusinfo_by_department(department);
    }
}
