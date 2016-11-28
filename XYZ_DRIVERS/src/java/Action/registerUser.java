/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

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
        
        String userName = request.getParameter("txtUserName");
        String firstName = request.getParameter("txtFirstName");
        String secondName = request.getParameter("txtlastname");
        String address1 = request.getParameter("txtaddressln1");
        String address2 = request.getParameter("txtaddressln2");
        String postcode = request.getParameter("txtpostcode");
        String dob = request.getParameter("txtdob");
        String password = request.getParameter("txtpassword");
        
        SimpleDateFormat dobFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date dateOfBirth = dobFormat.parse(dob);
        
        Date registrationDate = new Date();
    }
    
}
