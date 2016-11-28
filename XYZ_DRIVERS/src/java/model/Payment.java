/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author sam123uru
 */
public class Payment {
    
    private String memberId;
    private String paymentType;
    private float amount;
    private Date paymentDate;

    public Payment() {
        
    }
    
    public Payment(String memberId, String paymentType, float amount, Date paymentDate) {
        this.memberId = memberId;
        this.paymentType = paymentType;
        this.amount = amount;
        this.paymentDate = paymentDate;
    }

    public String getMemberId() {
        return memberId;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public float getAmount() {
        return amount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }
    
    
}
