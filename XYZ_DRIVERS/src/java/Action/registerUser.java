/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import model.Member;
import model.User;
import model.DBHandler;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tom
 */
public class registerUser extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        //Pull data from session
        String firstName = request.getParameter("txtFirstName");
        String secondName = request.getParameter("txtlastname");
        String address1 = request.getParameter("txtaddressln1");
        String address2 = request.getParameter("txtaddressln2");
        String postcode = request.getParameter("txtpostcode");
        String dob = request.getParameter("txtdob");
        
        //Convert date of birth into Date format
        SimpleDateFormat dobFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date dateOfBirth = dobFormat.parse(dob);
        
        //Get registration date
        Date registrationDate = new Date();
        
        //Create user name based on real name
        String initial = firstName.substring(0, 1);
        String userID = (initial + "-" + secondName).toLowerCase();
        
        //Add data to new Member instance
        Member mem = new Member();
        mem.setName(firstName + " " + secondName);
        mem.setAddress(address1 + "\n" + address2 + "\n" + postcode);
        mem.setDOB(dateOfBirth);
        mem.setDOR(registrationDate);
        mem.setStatus("APPLIED");
        mem.setBalance(1);
        
        //Create password from date of birth
        String password = new SimpleDateFormat("ddMMyy").format(dob);
        
        //Add data to new User instance
        User user = new User();
        user.setId(userID);
        user.setPassword(password);
        user.setStatus("APPLIED");
        
        //Add data to Database instance
        DBHandler db = new DBHandler();
        
        //Add member to database
        db.addMember(mem, user);
        
        //Print data back to View
        request.setAttribute("username", userID);
        request.setAttribute("password", password);
    }
    
}
