package com.test.service.activities;

import com.test.dto.ActivitiesDto_DB;

import java.util.ArrayList;

public interface ActivitiesService {
    void addActivities(String name, String category, String target, String date,
                       String link, String poster, String benefits, String host, String detail);

    ArrayList<ActivitiesDto_DB> getActivities();

    void deleteActivities(String number);

    void updateActivities(String name, String category, String target, String date,
                          String link, String poster, String benefits, String host,
                          String num, String detail);

    ArrayList<ActivitiesDto_DB> getActivity_by_num(String num);

    ArrayList<ActivitiesDto_DB> getActivity_by_category(String category);
}
