package com.example.demo.repository;

import com.example.demo.entity.Demo;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.math.BigInteger;
import java.util.List;


public interface DemoRepository extends MongoRepository<Demo, BigInteger> {
    List<Demo> findByContent(String Content);
}
