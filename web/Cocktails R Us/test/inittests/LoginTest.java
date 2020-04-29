/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inittests;

import db.DBOps;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author saksham
 */
public class LoginTest {

    users.User testUser;

    public LoginTest() {
    }

    @BeforeAll
    public static void setUpClass() {
    }

    @AfterAll
    public static void tearDownClass() {
    }

    @BeforeEach
    public void setUp() {
        testUser = new users.User("abc@xyz.com", "123");

    }

    @AfterEach
    public void tearDown() {
    }

    @Test
    public void testLogin() {
        DBOps dbOps = new DBOps();
        assertEquals(testUser, dbOps.loginUser("abc@xyz.com", "123"));
    }

}
