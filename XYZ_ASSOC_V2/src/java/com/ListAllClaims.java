/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Claims;
import model.Jdbc;

/**
 *
 * @author sam123uru
 */
public class ListAllClaims extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        Jdbc jdbc = new Jdbc();
        
        List<Claims> claims = jdbc.getAllClaims();
        
        HttpSession session = request.getSession(false);
        
        session.setAttribute("claim", claims);
        
        RequestDispatcher view = request.getRequestDispatcher("Admin/ListPendingClaims.jsp");

        view.forward(request, response);
        
        
    }
    
}
