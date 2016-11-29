package Action;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBHandler;
import model.Member;
import model.User;

/**
 *
 * @author Tom
 */
public class RegisterUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        
        //Return page
        RequestDispatcher view = request.getRequestDispatcher("welcomeNewUser.jsp");
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
