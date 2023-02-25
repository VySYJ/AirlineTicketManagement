
package com.DAO;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import com.DB.DBConnection;
import com.models.Airplane;
import com.models.Flight;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Quoc Thang
 */
public class FlightDAO {

    private Connection conn = null;

    public FlightDAO() {
        try {
            conn = DBConnection.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Method uses to get all information from table 'student' in database
     *
     * @return 1 resultset has list of students
     */
    public ResultSet getAll() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select * from FlightSchedules");
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
  

    /**
     * Method uses to get information of student
     *
     * @param s_id: ID of student
     * @return 1 object that user need to find
     */
    public Flight getFlight(String FlightScheduleID) {
        Flight sd = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from FlightSchedules where FlightScheduleID=?");
            pst.setString(1, FlightScheduleID);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                sd = new Flight(rs.getString("FlightScheduleID"),rs.getDate("Flight_date"),rs.getDate("Arrival_date"),rs.getString("Departure_time"),rs.getString("Arrive_time"),rs.getString("From"), rs.getString("To"),rs.getString(" Departure_airport"),rs.getString(" Arrival_airport"),rs.getString("AirplaneID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sd;
    }

    /**
     * Method uses to add new student into list
     *
     * @param su
     * @return
     */
    public int addNew(Flight su) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Insert into FlightSchedules values(?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, su.FlightScheduleID);
            pst.setDate(2, su.Flight_date);
            pst.setDate(3, su.Arrival_date);
            pst.setString(4, su.Departure_time);
            pst.setString(5, su.Arrive_time);
            pst.setString(6, su.From);
            pst.setString(7, su.To);
            pst.setString(8, su.Departure_airport);
            pst.setString(9, su.Arrival_airport);
            pst.setString(10, su.AirplaneID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Method uses to update information of student that user wants
     *
     * @param su
     * @return
     */
    public int update(Flight st) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("Update FlightSchedules set Flight_date=?, Arrival_date=?, Departure_time=?, Arrive_time=?,From=?,To=?,Departure_airport=?,Arrival_airport=?, AirplaneID=? where FlightScheduleID=?");
            
            pst.setDate(1, st.Flight_date);
            pst.setDate(2, st.Arrival_date);
            pst.setString(3, st.Departure_time);
            pst.setString(4, st.Arrive_time);
            pst.setString(5, st.From);
            pst.setString(6, st.To);
            pst.setString(7, st.Departure_airport);
            pst.setString(8, st.Arrival_airport);
            pst.setString(9, st.AirplaneID);
            pst.setString(10, st.FlightScheduleID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Method uses to delete information of student that user wants
     *
     * @param s_id
     * @return
     */
    public int delete(String FlightScheduleID) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareCall("Delete from FlightSchedules where FlightScheduleID=?");
            pst.setString(1, FlightScheduleID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    /**
     * Method uses to get class name of student
     *
     * @param c_id: ID of class
     * @return
     */
    public Airplane getAirplane(String AirplaneID) {
        Airplane cl = null;
        try {
            PreparedStatement pst = conn.prepareStatement("Select * from Airplane where AirplaneID=?");
            pst.setString(1, AirplaneID );
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                cl = new Airplane(rs.getString("AirplaneID"),rs.getString("Airline_company"),rs.getInt("Seats"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FlightDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cl;
    }

}
