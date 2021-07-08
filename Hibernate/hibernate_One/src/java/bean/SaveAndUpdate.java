package bean;


import org.hibernate.cfg.Configuration;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author asus
 */
public class SaveAndUpdate {
    public static void main(String[] args){
        
        Configuration cfg = new Configuration();
        System.out.println("Config created!");
        cfg.configure();
        System.out.println("Config Called!!..");
        
    }
    
}
