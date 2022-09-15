package com.example.demo.repository;

import com.example.demo.entity.Demo;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.math.BigInteger;


public interface DemoRepository extends MongoRepository<Demo, BigInteger> {
}
