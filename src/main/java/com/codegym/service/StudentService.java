package com.codegym.service;

import com.codegym.model.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentService implements IService<Student> {
    public StudentService() {
        list.add(new Student(1, "Hồng", "hongxitrum2005@gmail.com", "Quốc Oai", "C0723G21"));
        list.add(new Student(2, "Hồng", "hongxitrum2005@gmail.com", "Quốc Oai", "C0723G21"));
    }


    List<Student> list = new ArrayList<>();


    @Override
    public void add(Student student) {
        list.add(student);
    }

    @Override
    public int findById(int id) {
        for (int i = 0; i < list.size(); i++) {
            if (id == list.get(i).getId()) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public void delete(int id) {
        int index = findById(id);
        list.remove(index);
    }

    @Override
    public void update(int id, Student student) {
        int index = findById(id);
        list.set(index, student);
    }

    @Override
    public List<Student> findAll() {
        return list;
    }
    public Student StudentFindById(int id){
        for (Student student:list) {
            if (id==student.getId()){
                return student;
            }
        }
        return null;
    }

}
