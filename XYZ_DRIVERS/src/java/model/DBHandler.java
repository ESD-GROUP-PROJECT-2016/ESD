/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tom
 */
public class DBHandler {
    
    public void DBHandler() {
        
    }
    
    public void addMember(Member mem, User use) throws ClassNotFoundException, SQLException {
        //Set up DB Connection
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        //Statement to pass to mySQL server
        PreparedStatement member = con.prepareStatement("INSERT INTO members VALUES (?,?,?,?,?,?,?)");
        
        //Convert date into SQL format
        java.sql.Date dobSqlDate = new java.sql.Date(mem.getDOB().getTime());
        java.sql.Date dorSqlDate = new java.sql.Date(mem.getDOR().getTime());
        
        //Add member data to statement
        member.setString(1, mem.getID());
        member.setString(2, mem.getName());
        member.setString(3, mem.getAddress());
        member.setDate(4, dobSqlDate);
        member.setDate(5, dorSqlDate);
        member.setString(6, mem.getStatus());
        member.setFloat(7, mem.getBalance());
        member.executeUpdate();
        
        //Add user data to statement
        PreparedStatement userStatement = con.prepareStatement("INSERT INTO users VALUES (?,?,?)");
        
        userStatement.setString(1, use.getId());
        userStatement.setString(2, use.getPassword());
        userStatement.setString(3, use.getStatus());
        userStatement.executeUpdate();
    }
}
