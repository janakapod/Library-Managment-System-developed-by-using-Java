/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Tusita
 */
public class DB {
    public static Connection myCon() throws Exception {
        //Connection to mySQL database is returned
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/st_assignment", "root", "123456789");
    } 
}
