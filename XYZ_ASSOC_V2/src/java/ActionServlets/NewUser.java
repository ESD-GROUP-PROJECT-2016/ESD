/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ActionServlets;

import java.io.IOException;
import java.sql.Connection;
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
import javax.servlet.http.HttpSession;
import model.Jdbc;
import model.Member;
import model.User;

/**
 *
 * @author me-aydin
 */
public class NewUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(false);
        
        String firstName = request.getParameter("txtfirstname");
        String lastName = request.getParameter("txtlastname");
        String address1 = request.getParameter("txtaddressln1");
        String address2 = request.getParameter("txtaddressln2");
        String postcode = request.getParameter("txtpostcode");
        String DOB = request.getParameter("txtdob");

        Date CurrentDate = new Date();
        
        SimpleDateFormat dobFormat = new SimpleDateFormat("yyyy,MM,dd");
        Date dob = dobFormat.parse(DOB);
        
        String init = firstName.substring(0, 1);
        String userName = (init + "-" + lastName).toLowerCase();
        
        String Fulladress =(address1 + "," +address2);
        
        Member member = new Member();
        
        member.setuName(userName);
        member.setName(firstName + " " + lastName);
        member.setAddress(Fulladress + ", " + postcode);
        member.setDob(dob);
        member.setRegDate(CurrentDate);
        member.setStatus("APPLIED");
        member.setBalance(10);       
        
        User user = new User();          
        
        String password = (firstName+lastName);
        //Create backwards password---------------------------------------------------------------
        
        user.setuName(userName);
        user.setPassword(password);
        user.setStatus("APPLIED");
        
        Jdbc db = new Jdbc();
        db.connect((Connection) request.getServletContext().getAttribute("connection"));
        
        db.addMember(member, user);
        
        if ((Connection)request.getServletContext().getAttribute("connection")==null) {
            request.getRequestDispatcher("/WEB-INF/conErr.jsp").forward(request, response);         
        }
        else {
            request.setAttribute("username", userName);
            request.setAttribute("password", password);
        
            request.getRequestDispatcher("Post-Registration.jsp").forward(request, response);

        }
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
        } catch (ParseException ex) {
            Logger.getLogger(NewUser.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(NewUser.class.getName()).log(Level.SEVERE, null, ex);
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

