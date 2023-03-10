/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controller;

import com.Dao.AccountDAO;
import com.models.Account;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class SignInController extends HttpServlet {

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
            out.println("<title>Servlet SignInController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignInController at " + request.getContextPath() + "</h1>");
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
        if (path.endsWith("/SignIn")) {
            request.getRequestDispatcher("/SignIn.jsp").forward(request, response);
        } else if (path.endsWith("/SignIn/NewAccount")) {
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
        } else if (path.endsWith("SignIn/SignOut")) {
            Cookie[] ck = request.getCookies();
            for (Cookie o : ck) {
                o.setValue("");
                o.setMaxAge(0);
                response.addCookie(o);
            }
            response.sendRedirect("/");
        } else if (path.endsWith("SignIn/HomeUser")) {
            request.getRequestDispatcher("/HomePageUser.jsp").forward(request, response);
        } else if (path.endsWith("SignIn/EditAccount")) {
//            String[] s = path.split("/");
//            String accountid = s[s.length - 1];
//            AccountDAO dao = new AccountDAO();
//            Account ac = dao.getAccountBy(accountid);
//            if (ac == null) {
//                response.sendRedirect("/");
//            } else {
//                HttpSession session = request.getSession();
//                session.setAttribute("account", ac);
            request.getRequestDispatcher("/EditAccount.jsp").forward(request, response);
//            }
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
        int accountID, roleID;
        String username, password, email;
        boolean isLogin = false;
        if (request.getParameter("btnLogin") != null) {
            username = request.getParameter("username");
            password = request.getParameter("password");
            AccountDAO dao = new AccountDAO();
            String passMd5 = dao.getMd5(password);
            Account ac = dao.getAccountby(username);
            if (ac != null) {
                if (ac.Username.equals(username)) {
                    if (ac.Password.equals(passMd5)) {
                        Cookie ck = new Cookie("username", username);
                        ck.setMaxAge(60 * 60 * 24 * 3);
                        response.addCookie(ck);
                        HttpSession session = request.getSession();
                        session.setAttribute("acc", ac);
                        isLogin = true;
                        request.setAttribute("isLogin", isLogin);
//                        response.sendRedirect(request.getContextPath() + "/HomePageUser.jsp");
                        response.sendRedirect("/SignIn/HomeUser");
                    } else {
                        request.setAttribute("mess", "M???t kh???u kh??ng ????ng!");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/SignIn.jsp");
                        dispatcher.forward(request, response);
                    }
                }
            } else {
                request.setAttribute("mess", "T??i kho???n kh??ng t???n t???i!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/SignIn.jsp");
                dispatcher.forward(request, response);
            }
        } else if (request.getParameter("btnSignUp") != null) {
            AccountDAO dao = new AccountDAO();
            username = request.getParameter("txtdkusername");
            boolean check = dao.checkUsername(username);
            if (check == true) {
                request.setAttribute("mess", "T??n ????ng nh???p ???? t???n t???i!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/SignUp.jsp");
                dispatcher.forward(request, response);
            } else {
                password = request.getParameter("txtdkpassword1");
                String passMd5 = dao.getMd5(password);
                email = request.getParameter("txtemail");
                int RoleID = 2;
                int AccountID = dao.getSize() + 1;
                Account st = new Account(AccountID, username, passMd5, email, RoleID);
                int count = dao.addNew(st);
                if (count > 0) {
                    request.setAttribute("mess", "????ng k?? th??nh c??ng! ????ng Nh???p Ngay!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/SignIn.jsp");
                    dispatcher.forward(request, response);
                } else {
                    request.setAttribute("mess", "????ng k?? kh??ng th??nh c??ng!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/SignUp.jsp");
                    dispatcher.forward(request, response);
                }
            }
        }
        if (request.getParameter("btnEditAc") != null) {
            int count = 0;
            accountID = Integer.parseInt(request.getParameter("txtaccountid"));
            roleID = Integer.parseInt(request.getParameter("txtroleid"));
            username = request.getParameter("txtusername");
            password = request.getParameter("txtpassword");
            email = request.getParameter("txtemail");
            AccountDAO dao = new AccountDAO();
            String passMd5 = dao.getMd5(password);

            boolean check = dao.checkUsername(username);
            if (check == true) {
                request.setAttribute("mess", "T??n ????ng nh???p ???? t???n t???i!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/EditAccount.jsp");
                dispatcher.forward(request, response);
            } else {
                Account ac = new Account(accountID, username, password, email, roleID);
                try {
                    count = dao.update(ac);
                    if (count > 0) {
                        request.setAttribute("mess", "Ch???nh s???a th??nh c??ng!");
                        HttpSession session = request.getSession();
                        session.setAttribute("acc", ac);
//                        RequestDispatcher dispatcher = request.getRequestDispatcher("/SignIn.jsp");
//                        dispatcher.forward(request, response);
                        response.sendRedirect("/SignIn/HomeUser");
                    } else {
                        request.setAttribute("mess", "Ch???nh s???a kh??ng th??nh c??ng!");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/EditAccount.jsp");
                        dispatcher.forward(request, response);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
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
