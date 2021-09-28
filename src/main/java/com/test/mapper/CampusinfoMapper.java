package com.test.mapper;

import com.test.dto.ActivitiesDto_DB;
import com.test.dto.CampusinfoDto_DB;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface CampusinfoMapper {
    void addCampusinfo(@Param("title") String title, @Param("subtitle") String subtitle,
                       @Param("contexts") String contexts, @Param("host") String host,
                       @Param("department") String department, @Param("file") String file);

    ArrayList<CampusinfoDto_DB> getCampusinfo();
    ArrayList<CampusinfoDto_DB> getCampusinfo_by_department(@Param("department") String department);
    void deleteCampusinfo(@Param("number") String number);
    void updateCampusinfo(@Param("title") String title, @Param("subtitle") String subtitle,
                          @Param("contexts") String contexts, @Param("host") String host,
                          @Param("department") String department, @Param("file") String file);
}
