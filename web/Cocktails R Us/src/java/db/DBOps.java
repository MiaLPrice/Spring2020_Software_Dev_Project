/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author saksham
 *
 * Overview - Used to manage database operations
 */
public class DBOps {

    Connection connection = null;

    public DBOps() {

        try {
            connection = DBConnection.getDBConnection();
            System.out.println(connection.isValid(0));
        } catch (SQLException ex) {
            Logger.getLogger(DBOps.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean addUser(String email, String password, String name) {
        String insertUserSQL = "INSERT INTO users(email,name,password) VALUES (?,?,crypt(?, gen_salt(?)));";
        boolean res = false;
        try {
            PreparedStatement insertUserSt = connection.prepareStatement(insertUserSQL);
            insertUserSt.setString(1, email);
            insertUserSt.setString(2, name);
            insertUserSt.setString(3, password);
            insertUserSt.setString(4, "bf");
            res = insertUserSt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DBOps.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn();
        }
        return res;
    }

    private void closeConn() {
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBOps.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
