/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package topsusicm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BagusThanatos
 */
public class Database {
    private static Database d= new Database();
//    private final String username= "root";
//    private final String pass="";
    private Statement  stmt= null;
    private Connection con= null;
    private ResultSet rs= null;
    
    private Database(){
        /*try {
            Class.forName("org.gjt.mm.mysql.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        try {
            con = DriverManager.getConnection("jdbc:sqlite:database.db");
            stmt= con.createStatement();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }
    
    public ResultSet getData(String query){
            try {
                rs = stmt.executeQuery(query);
                
            } catch (Exception e){
                e.printStackTrace();
            }
            return rs;
    }
    public void query(String query){
        try {
            stmt.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static Database getDatabase(){
        return d;
    }
}
