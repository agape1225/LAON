package com.utility;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Utility {

    public String getData(){
        SimpleDateFormat dateForServer = new SimpleDateFormat("yyyyMMddHHmmss_");
        Date currentTime = new Date(); String regDateForServer = dateForServer.format(currentTime);

        return regDateForServer;
    }

}
