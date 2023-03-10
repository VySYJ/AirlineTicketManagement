/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controller;

import com.Dao.AccountDAO;
import com.models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Thiết Béo
 */
public class AccountManagementController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AccountManagementController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountManagementController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String path = request.getRequestURI();
        if (path.endsWith("/Account")) {
            request.getRequestDispatcher("/AccountManagement.jsp").forward(request, response); //này là bài mới bị lỗi nè
        } else {
            if (path.startsWith("/Account/Delete/")) {
                int count = 0;
                String[] s = path.split("/");
                String AccountID = s[s.length - 1];
                AccountDAO dao = new AccountDAO();
                count = dao.delete(AccountID);
                if (count > 0) {
                    response.sendRedirect("/Account");
                } else {
                    request.getRequestDispatcher("/HomePage.jsp").forward(request, response);
                }

            } else {
                if (path.startsWith("/Account/Change/")) {
                        String[] s = path.split("/");
                        String username = s[s.length - 1];
                        AccountDAO dao = new AccountDAO();
                        String TypeAccount = dao.getTypeAccount(username);
                        if (username.equals("1")) {
                            response.sendRedirect("/Account");
                        } else if (TypeAccount.equals("2")) {
                            Account ac;
                            ac = dao.getAccount(username);
                            dao.SetTypeAdminAccount(ac);
                            response.sendRedirect("/Account");
                        } else if (TypeAccount.equals("1")) {
                            Account ac;
                            ac = dao.getAccount(username);
                            dao.SetTypeCustomerAccount(ac);
                            response.sendRedirect("/Account");
                        }
                    }
            }
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
        processRequest(request, response);
        String Email = request.getParameter("Email");
        String AccountID = request.getParameter("AccountID");
        String UserName = request.getParameter("Username");
        String Password = request.getParameter("Password");
        String RoldID = request.getParameter("RoldID");

        if(AccountID.isEmpty()){
            response.sendRedirect("AddAccount.jsp");
        }
        AccountDAO dao = new AccountDAO();
        dao.addNew(Email, AccountID, UserName, Password, RoldID);
        response.sendRedirect("HomePage.jsp");

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
