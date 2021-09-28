package com.test.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
public class CampusinfoDto {
    String title;
    String subtitle;
    String contexts;
    String host;
    String department;
    MultipartFile file;
}
