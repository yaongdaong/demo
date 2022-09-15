package com.example.demo.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document(collection="demo")
public class Demo {
    @Id
    private String _id;
    private String title;
    private String content;
}
