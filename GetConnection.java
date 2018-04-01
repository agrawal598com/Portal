
package service;

import java.sql.Connection;
import java.sql.DriverManager;
public class GetConnection {
    private  static Connection con=null;
    public static Connection getConnect()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
         con=   DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","root");
        System.out.println("Driver Loaded...");
      
        
    }/*  it is only Used for Establish Connectin*/
        catch(Exception e)
        {
            e.printStackTrace();
        }
   return con;
}}

