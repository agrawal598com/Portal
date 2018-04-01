
package DAO;

import Model.UserSignup;
import java.sql.Connection;
import java.sql.PreparedStatement;
import service.GetConnection;

public class signupDB
{
 public static  boolean signupconfirm(UserSignup u)
    {
      Connection con=null;
      boolean status =false;
        try {
         con=GetConnection.getConnect();
         String sql="insert into signup(name,password,email,checklogin,mobile,ldate) values(?,?,?,?,?,now())";
               
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1,u.getName());
                ps.setString(2,u.getPass());
               ps.setString(3,u.getEmail());
               ps.setInt(4,u.getCount());
               ps.setString(5, u.getMobile());
             //  System.out.println(s.getName()+"===="+s.getEmail());
               if(ps.executeUpdate()!=0){
     status=true;
               
        }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try {
              con.close();
            } catch (Exception e) {
            }
        }
        
        
  return status; 
    }
}
