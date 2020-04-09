/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
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

}
