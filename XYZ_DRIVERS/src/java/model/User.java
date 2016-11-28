/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author sam123uru
 */
public class User {

    private String id;
    private String status;
    private String password;
    
    public User(){
        
    }

    public User(String id, String status, String password) {
        this.id = id;
        this.status = status;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public String getStatus() {
        return status;
    }

    public String getPassword() {
        return password;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", password=" + password + ", status=" + status + '}';
    }
    
}
    

