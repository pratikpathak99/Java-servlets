/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info;

import java.io.Serializable;

/**
 *
 * @author asus
 */
public class Student_details implements Serializable {
    
    private String Student_Name ;
    private int Student_Enrollment,Total_marks;
    private float percentage;
    
    public void setStudent_name(String name){
        Student_Name = name;
    }
    public void setStudent_Enrollment(int Enrollment){
        Student_Enrollment = Enrollment;
    }
    public void setTotal_marks(int marks){
        Total_marks = marks;
    }
    public String getStudent_name(){
        return Student_Name;
    }
    public int getStudent_Enrollment(){
        return Student_Enrollment;
    }
    public float getpercentage(){
        percentage = (float) ((Total_marks /500.0)* 100);
        return percentage;
    }
}
