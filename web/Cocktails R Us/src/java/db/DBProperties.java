package db;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author saksham
 */
public class DBProperties {
    // to be removed later
    public static void createProperties() {
        try (OutputStream output = new FileOutputStream("db-config.properties")) {
            Properties prop = new Properties();
            prop.setProperty("db.host", "localhost");
            prop.setProperty("db.user", "cocktail_admin");
            prop.setProperty("db.password", "pass");
            prop.setProperty("db.db", "cocktails");
            prop.store(output, null);
            System.out.println(prop);
        } catch (IOException ex) {
            Logger.getLogger(DBProperties.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Properties getProperties() {
        Properties prop = new Properties();
        //createProperties();
        try (InputStream input = new FileInputStream("db-config.properties")) {

            if (input == null) {            
                createProperties();
                prop = getProperties();
            } else {
                prop.load(input);
            }
        } catch (IOException ex) {
            Logger.getLogger(DBProperties.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prop;
    }
}
