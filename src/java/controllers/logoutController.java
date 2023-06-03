/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zizof
 */
@WebServlet(name = "logoutController", urlPatterns = {"/logoutController"})
public class logoutController extends HttpServlet {
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
HttpSession session = request.getSession();
         
        //session.removeAttribute("userName");
        session.setAttribute("userName", null);
        session.removeAttribute("test");
        session.removeAttribute("user");
        //session.invalidate();
        
        if (session.getAttribute("userName") == null ) {         
            //RequestDispatcher rd = request.getRequestDispatcher("Login/logoutSuccessful.jsp");
              //  rd.forward(request, response); // response.sendRedirect("Login/logoutSuccessful.jsp");
                response.sendRedirect(request.getContextPath()+"/Login/logoutSuccessful.jsp");
        }
/*        PrintWriter out = response.getWriter();
        out.print("test");
  */      
        /*
        String name = (String)session.getAttribute("userName");
        */
        
       /* if(name==null){
            response.sendRedirect("Login/logoutSuccessful.jsp");
*/
  
    }

}
