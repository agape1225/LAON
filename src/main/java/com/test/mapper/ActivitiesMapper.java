package com.test.mapper;

import com.test.dto.ActivitiesDto_DB;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface ActivitiesMapper {
    void addActivities(@Param("name") String name, @Param("category") String category,
                       @Param("target") String target, @Param("date")String date,
                       @Param("link") String link, @Param("poster") String poster,
                       @Param("benefits") String benefits, @Param("host") String host,
                       @Param("detail") String detail);

    ArrayList<ActivitiesDto_DB> getActivities();

    void deleteActivities(@Param("number") String number);

    void updateActivities(@Param("name") String name, @Param("category") String category,
                          @Param("target") String target, @Param("date")String date,
                          @Param("link") String link, @Param("poster") String poster,
                          @Param("benefits") String benefits,@Param("host") String host,
                          @Param("num") String num, @Param("detail") String detail);

    ArrayList<ActivitiesDto_DB> getActivity_by_num(@Param("num") String num);

    ArrayList<ActivitiesDto_DB> getActivity_by_category(@Param("category") String category);
}
