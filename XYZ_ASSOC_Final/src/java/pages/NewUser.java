/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pages;

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
//import model.Member;
//import model.User;

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
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);
        
        String firstname = request.getParameter("firstname");
        String surname = request.getParameter("surname");
        String dob = request.getParameter("dob");
        String street_number = request.getParameter("street_number");
        String postal_code = request.getParameter("postal_code");
        String locality = request.getParameter("locality");
        
     String CurrentDate = (new Date()).toString();
        
       
        String FullAddress =(street_number +","+ locality +","+ postal_code);
        String FullName = (firstname+" "+surname);
        SimpleDateFormat dobFormat = new SimpleDateFormat("dd-mm-yyyy");
       
        String init = firstname.substring(0, 1);
        String userName = (init + "-" + surname).toLowerCase();
       String password = dob;


// String DOB = dobFormat.parse(dob);
        //Date currDat = dobFormat.parse((CurrentDate).toString());
        String [] UserQuery = new String[3];
        UserQuery[0] = userName;
        UserQuery[1] = password;
        UserQuery[2] = "APPLIED";
             
        String [] MemberQuery = new String[7];
       MemberQuery[0] = userName;
       MemberQuery[1] = FullName;
       MemberQuery[2] = FullAddress;
       MemberQuery[3] = dob;
       MemberQuery[4] = CurrentDate;
       MemberQuery[5] = "APPLIED";
       MemberQuery[6] = "0";
       
       
                     
        
            
        Jdbc jdbc = (Jdbc)session.getAttribute("dbbean"); 
       // Jdbc jdbcMem = (Jdbc)session.getAttribute("dbbean"); 
      
        if (jdbc == null)
            request.getRequestDispatcher("/WEB-INF/conErr.jsp").forward(request, response);
        
        // if (jdbcMem == null)
         //  request.getRequestDispatcher("/WEB-INF/conErr.jsp").forward(request, response);
        
   
         if(MemberQuery[0].equals("")||UserQuery[0].equals("") ) {
            request.setAttribute("message", "Username cannot be NULL");
        } 
        else {
            jdbc.insertUser(UserQuery);
            jdbc.insertMember(MemberQuery);
            request.setAttribute("message", UserQuery[0]+" is added");
            request.setAttribute("message", MemberQuery[0]+" is added");
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
