package db;

import java.util.Properties;
import org.postgresql.ds.PGSimpleDataSource;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author saksham
 */
public class DBSource {

    public static PGSimpleDataSource getPostgresSQLSource() {
        PGSimpleDataSource dataSource = new PGSimpleDataSource();
        Properties properties = DBProperties.getProperties();
        dataSource.setUser(properties.getProperty("db.user"));
        dataSource.setServerName(properties.getProperty("db.host"));
        dataSource.setPassword(properties.getProperty("db.password"));
        dataSource.setDatabaseName(properties.getProperty("db.db"));
        return dataSource;        
    }
}
