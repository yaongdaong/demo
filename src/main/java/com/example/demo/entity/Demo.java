package com.example.demo.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.math.BigInteger;
import java.util.Date;

@Data
@Document(collection="demo")
public class Demo {
    @Id
    private BigInteger id;
    private String title;
    private String content;
    private Date writeDate = new Date();

}
