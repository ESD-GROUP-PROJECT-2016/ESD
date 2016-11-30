/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author TOBY WHITE
 */
public class Member {
      private String uName;
    private String name;
    private String address;
    private String dob;
    private String RegDate;
    private String status;
    private float balance;

    public Member() {

    }

    public void setuName(String id) {
        this.uName = uName;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRegDate() {
        return RegDate;
    }

    public void setRegDate(String RegDate) {
        this.RegDate = RegDate;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getuName() {
        return uName;
    }

    @Override
    public String toString() {
        return "Member{" + "name=" + name + ", address=" + address + ", dob=" + dob + ", RegDate=" + RegDate + ", status=" + status + ", balance=" + balance + '}';
    }
}
