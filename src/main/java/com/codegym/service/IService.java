package com.codegym.service;

import com.codegym.model.Student;

import java.util.List;

public interface IService <E>{
    void add(E e);
    int findById(int id);
    void delete(int id);
    void update(int id , E e);
    List<E> findAll();

}
