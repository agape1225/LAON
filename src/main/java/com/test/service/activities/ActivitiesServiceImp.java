package com.test.service.activities;
import com.test.dao.ActivitiesDao;
import com.test.dto.ActivitiesDto_DB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ActivitiesServiceImp implements ActivitiesService {

    @Autowired
    ActivitiesDao activitiesDao;

    @Override
    public void addActivities(String name, String category, String target, String date,
                              String link, String poster, String benefits, String host, String detail) {

        activitiesDao.addActivities(name, category, target, date, link, poster, benefits, host, detail);

    }

    @Override
    public ArrayList<ActivitiesDto_DB> getActivities() {
        return activitiesDao.getActivities();
    }

    @Override
    public void deleteActivities(String number) {
        activitiesDao.deleteActivities(number);
    }

    @Override
    public void updateActivities(String name, String category, String target, String date,
                                 String link, String poster, String benefits, String host,
                                 String num, String detail) {

        activitiesDao.updateActivities(name, category, target, date, link, poster, benefits, host, num, detail);

    }

    @Override
    public ArrayList<ActivitiesDto_DB> getActivity_by_num(String num) {
        return activitiesDao.getActivity_by_num(num);
    }

    @Override
    public ArrayList<ActivitiesDto_DB> getActivity_by_category(String category) {

        return activitiesDao.getActivity_by_category(category);
    }
}
