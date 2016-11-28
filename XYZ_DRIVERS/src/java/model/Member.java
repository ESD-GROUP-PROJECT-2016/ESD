/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.Date;

/**
 *
 * @author Tom
 */
public class Member {
    private String id;
    private String name;
    private String address;
    private Date dob;
    private Date dor; //Date of registration
    private String status;
    private float balance;
    
    public Member() {
        
    }
    
    //Set variables
    public void setID(String ID) {
        this.id = ID;
    }
    public void setName(String Name) {
        this.name = Name;
    }
    public void setAddress(String Address) {
        this.address = Address;
    }
    public void setDOB(Date DOB) {
        this.dob = DOB;
    }
    public void setDOR(Date DOR) {
        this.dor = DOR;
    }
    public void setStatus(String Status) {
        this.status = Status;
    }
    public void setBalance(float Balance) {
        this.balance = Balance;
    }
    
    //Get variables
    public String getID() {
        return this.id;
    }
    public String getName() {
        return this.name;
    }
    public String getAddress() {
        return this.address;
    }
    public Date getDOB() {
        return this.dob;
    }
    public Date getDOR() {
        return this.dor;
    }
    public String getStatus() {
        return this.status;
    }
    public float getBalance() {
        return this.balance;
    }
}
