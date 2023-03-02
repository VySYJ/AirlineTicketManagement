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

    public int AccountID;
    public String Username;
    public String Password;
    public String Email;
    public int RoleID;

    public Account() {
    }

    public Account(int AccountID, String Username, String Password, String Email, int RoleID) {
        this.AccountID = AccountID;
        this.Username = Username;
        this.Password = Password;
        this.Email = Email;
        this.RoleID = RoleID;
    }

    
}
