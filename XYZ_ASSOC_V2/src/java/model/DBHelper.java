/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Tom
 */
public class DBHelper {
    Connection connection = null;
    Statement statement = null;
    ResultSet rs = null;
    
    public DBHelper() {
        
    }
    public void connect(Connection con) {
        this.connection = con;
    }
    
    public void addMember(Member member) {
        
    }
    
    public boolean checkMember(String id, String password) throws ClassNotFoundException {
        boolean st = false;
        String ID = id;
        String pass = password;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/xyz_assoc";
          //  connection = DriverManager.getConnection(url, "root", "");            

            PreparedStatement ps = connection.prepareStatement("SELECT * FROM users WHERE id='?' and password='?'");
            ps.setString(1, ID);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            st = rs.next();           

        } catch (SQLException ex) {
            Logger.getLogger(Jdbc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
    }
    public Member getMember(String userName) throws SQLException, ClassNotFoundException {
        Member mem = new Member();
       try {
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql//localhost/xyz_assoc", "root", "");
        PreparedStatement statement = con.prepareStatement("SELECT * FROM members WHERE id=?");
        
        statement.setString(1, userName);
        
        ResultSet result = statement.executeQuery();
        
        while(result.next()) {
            mem.setuName(result.getString("id"));
            mem.setName(result.getString("name"));
            mem.setAddress(result.getString("address"));
            mem.setDob(result.getString("dob"));
            mem.setRegDate(result.getString("dor"));
            mem.setStatus(result.getString("status"));
            mem.setBalance(result.getFloat("balance"));
        }
       
       }  catch(SQLException e) {
           Logger.getLogger(Jdbc.class.getName()).log(Level.SEVERE, null, e);
       }
        return mem;
    }
    
}
