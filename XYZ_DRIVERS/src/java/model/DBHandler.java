/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;

/**
 *
 * @author Tom
 */
public class DBHandler {
    
    public void DBHandler() {
        
    }
    
    public void addMember(Member mem, User use) throws ClassNotFoundException {
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
        
        
    }
}
