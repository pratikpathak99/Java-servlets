/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author asus
 */
public class cus implements Serializable{
    
    private int CUSTOMER_ID;
    private String CUST_FIRST_NAME;
    private String CUST_LAST_NAME;

    public int getCUSTOMER_ID() {
        return CUSTOMER_ID;
    }

    public String getCUST_FIRST_NAME() {
        return CUST_FIRST_NAME;
    }

    public String getCUST_LAST_NAME() {
        return CUST_LAST_NAME;
    }

    public void setCUSTOMER_ID(int CUSTOMER_ID) {
        this.CUSTOMER_ID = CUSTOMER_ID;
    }

    public void setCUST_FIRST_NAME(String CUST_FIRST_NAME) {
        this.CUST_FIRST_NAME = CUST_FIRST_NAME;
    }

    public void setCUST_LAST_NAME(String CUST_LAST_NAME) {
        this.CUST_LAST_NAME = CUST_LAST_NAME;
    }
    
    
    
}
