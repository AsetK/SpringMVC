package com.epam.springmvc.entity;


import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.*;
import java.util.Date;
import java.util.List;

public class Student {
    //@Size(min = 2, max = 10, message = "Please enter value between {min} and {max} characters")
    @Size(min = 2, max = 10)
    @Pattern(regexp = "[a-zA-Z]*")
    private String studentName;
    @NotEmpty
    private String studentHobby;
    @NotNull
    @Max(777)
    private Long studentMobile;
    @Past
    private Date studentDOB;
    private List<String> studentSkills;
    private Address studentAddress;

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentHobby() {
        return studentHobby;
    }

    public void setStudentHobby(String studentHobby) {
        this.studentHobby = studentHobby;
    }

    public Long getStudentMobile() {
        return studentMobile;
    }

    public void setStudentMobile(Long studentMobile) {
        this.studentMobile = studentMobile;
    }

    public Date getStudentDOB() {
        return studentDOB;
    }

    public void setStudentDOB(Date studentDOB) {
        this.studentDOB = studentDOB;
    }

    public List<String> getStudentSkills() {
        return studentSkills;
    }

    public void setStudentSkills(List<String> studentSkills) {
        this.studentSkills = studentSkills;
    }

    public Address getStudentAddress() {
        return studentAddress;
    }

    public void setStudentAddress(Address studentAddress) {
        this.studentAddress = studentAddress;
    }
}
