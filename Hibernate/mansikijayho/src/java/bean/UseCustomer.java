/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author asus
 */
public class UseCustomer {
    public static void main(String[] args){
        Configuration cfg = new Configuration();
        System.out.println("Configuration Created!!");
        cfg.configure();
        System.out.println("Configure Created!!");
       SessionFactory sessionFactory =cfg.buildSessionFactory();
       System.out.println("sessionFactory created!!");
    }
    
}
