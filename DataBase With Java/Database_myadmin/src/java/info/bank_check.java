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
public class bank_check implements Serializable{
    private String name = "Pratik" ;
    private String i_id="pratikpathak@gmail.com";
    private int Account_No=007 ;
    private int Bank_Amount=10000;

    public String getName() {
        return name;
    }

    public String getI_id() {
        return i_id;
    }

    public int getAccount_No() {
        return Account_No;
    }

    public int getBank_Amount() {
        return Bank_Amount;
    }
    
}
