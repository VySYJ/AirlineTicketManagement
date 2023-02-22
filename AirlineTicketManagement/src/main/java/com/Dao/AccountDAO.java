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
    
     public Account getAccount(String username) {
        Account ac = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where Username=?");
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

    public int deleteAccount(String username) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Account where Username=?");
            pst.setString(1, username);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

//    public Account getAccount(String Email) {
//        Account account = null;
//        try {
//            PreparedStatement pst = conn.prepareStatement("Select * from Account where Email=?");
//            pst.setString(1, Email);
//            ResultSet rs = pst.executeQuery();
//            rs.next();
//            account = new Account(rs.getString("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
//        } catch (SQLException ex) {
//            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return account;
//    }

    public Account getAccountBy(String AccountID) {
        Account account = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Account where AccountID=?");
            pst.setString(1, AccountID);
            ResultSet rs = pst.executeQuery();
            rs.next();
            account = new Account(rs.getInt("AccountID"), rs.getString("Username"), rs.getString("Password"), rs.getString("Email"), rs.getInt("RoleID"));
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return account;
    }

    public int addNew(Account account) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into Account values(?,?,?,?,?)");
            pst.setInt(1, account.getAccountID());
            pst.setString(2, account.getUsername());
            pst.setString(3, account.getPassword());
            pst.setString(4, account.getEmail());
            pst.setInt(5, account.getRoleID());
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

    public String getAccountPassword(String username) {
        String password = "";
        try {
            PreparedStatement pst = conn.prepareStatement("select Password from Account where Username=?");
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                password = rs.getString("Password");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return password;
    } 
     public String getTypeAccount(String username) {
        String typeAcc = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where Username=?");
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                typeAcc = rs.getString("TypeAccount");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return typeAcc;
    }
   
}
