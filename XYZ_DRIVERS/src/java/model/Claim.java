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
public class Claim {
    
    private int id;
    private String memberID;
    private Date claimDate;
    private String rationale;
    private String status;
    private float amount;

    public Claim() {
        
    }

    public Claim(int id, String memberID, Date claimDate, String rationale, String status, float amount) {
        this.id = id;
        this.memberID = memberID;
        this.claimDate = claimDate;
        this.rationale = rationale;
        this.status = status;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public String getMemberID() {
        return memberID;
    }

    public Date getClaimDate() {
        return claimDate;
    }

    public String getRationale() {
        return rationale;
    }

    public String getStatus() {
        return status;
    }

    public float getAmount() {
        return amount;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public void setClaimDate(Date claimDate) {
        this.claimDate = claimDate;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
    
}
