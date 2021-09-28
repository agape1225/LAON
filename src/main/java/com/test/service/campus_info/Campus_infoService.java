package com.test.service.campus_info;

import com.test.dto.CampusinfoDto_DB;
import java.util.ArrayList;

public interface Campus_infoService {
    void addCampusinfo(String title, String subtitle, String contexts, String host,String department, String file);

    ArrayList<CampusinfoDto_DB> getCampusinfo();

    void deleteCampusinfo(String number);

    public void updateCampusinfo(String title, String subtitle, String contexts,String host,
                                 String department,String file);

    ArrayList<CampusinfoDto_DB> getCampusinfo_by_department(String department);
}
