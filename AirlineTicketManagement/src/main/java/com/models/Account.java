/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import com.Dao.*;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class Account {

    public String AccountID;
    public String Username;
    public String Password;
    public String Email;
    public int RoleID;

    public Account() {
    }

    public Account(String AccountID, String Username, String Password, String Email, int RoleID) {
        this.AccountID = AccountID;
        this.Username = Username;
        this.Password = Password;
        this.Email = Email;
        this.RoleID = RoleID;
    }

    public String getAccountID() {
        return AccountID;
    }

    public void setAccountID(String AccountID) {
        this.AccountID = AccountID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getRoleID() {
        return RoleID;
    }

    public void setRoleID(int RoleID) {
        this.RoleID = RoleID;
    }
    
}
