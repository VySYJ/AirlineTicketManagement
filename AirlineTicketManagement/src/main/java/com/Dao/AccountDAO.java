/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Dao;

import com.DB.DBConnection;
import com.models.Account;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class AccountDAO {

    Connection conn;

    public AccountDAO() {
        try {
            conn = DBConnection.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account where RoleID=2");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Account getAccount(String account_email) {
        Account account = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account where Email=?");
            pst.setString(1, account_email);
            ResultSet rs = pst.executeQuery();
            rs.next();
            account = new Account(rs.getInt("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }

    public Account getAccountby(String username) {
        Account ac = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account WHERE Username=?");
            pst.setString(1, username);

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getInt("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ac;
    }

    public Account getAccountBy(String account_id) {
        Account account = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account where AccountID=?");
            pst.setString(1, account_id);
            ResultSet rs = pst.executeQuery();
            rs.next();
            account = new Account(rs.getInt("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }

    public int update(Account account) throws SQLException {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Update Account set Username=?, Email=?, Password=?, RoleID=? where AccountID=?");
            pst.setInt(5, account.AccountID);
            pst.setString(1, account.Username);
            pst.setString(2, account.Email);
            pst.setString(3, account.Password);
            pst.setInt(4, account.RoleID);
            count = pst.executeUpdate();
        } catch (Exception e) {
        }
        return count;
    }

    public boolean checkUsername(String input) {
        ResultSet rs = null;
        boolean check = false;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select Username from Account");
            while (rs.next()) {
                if (input.equals(rs.getString("Username"))) {
                    check = true;
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;

    }

    public int addNew(Account account) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Account values(?,?,?,?,?)");
            pst.setInt(1, account.AccountID);
            pst.setString(2, account.Username);
            pst.setString(3, account.Password);
            pst.setString(4, account.Email);
            pst.setInt(5, account.RoleID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int delete(String AccountID) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Delete from Account where AccountID=?");
            pst.setString(1, AccountID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int getSize() {
        int count = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from Account");
            while (rs.next()) {
                count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public String getMd5(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());

            BigInteger no = new BigInteger(1, messageDigest);

            String MD5pass = no.toString(16);
            while (MD5pass.length() < 32) {
                MD5pass = "0" + MD5pass;
            }
            return MD5pass;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
