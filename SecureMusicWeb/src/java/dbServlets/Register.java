/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbServlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String regName = request.getParameter("newusername");
        String regPass = request.getParameter("newpassword");
        String regEmail = request.getParameter("email");
        String dbName, dbPassword, cmpHost, dbURL;
        try {
            Class.forName("org.postgresql.Driver");
            dbName = "groupcz";
            dbPassword = "groupcz";
            cmpHost = "cmpstudb-02.cmp.uea.ac.uk";
            dbURL = ("jdbc:postgresql://" + cmpHost + "/" + dbName);
            Connection connection = DriverManager.getConnection(dbURL, dbName, dbPassword);

            String SQL1 = "SET search_path TO musicweb";
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(SQL1);
            String SQL2 = "INSERT INTO dbuser VALUES ('" + regName + "', '" + regPass + "', '" + regEmail + "')";
            stmt.executeUpdate(SQL2);
//            PreparedStatement ps = connection.prepareStatement(SQL2);
//            ps.setString(1, regName);
//            ps.setString(2, regPass);
//            ps.executeUpdate(SQL2);
            response.sendRedirect("index.jsp");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        //
    }
}
