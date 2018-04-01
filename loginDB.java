
package DAO;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.xml.ws.Response;

import service.GetConnection;


public class loginDB {
               
            
              static public boolean validlogin(User l){
                  Connection con=null;
               boolean status=false;
             try
              {
               con=GetConnection.getConnect();
               String sql="select email,password,checklogin,ldate from signup where email=? and password=?";
               PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1,l.getEmail());
                ps.setString(2,l.getPass());
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                int o=rs.getInt("checklogin");
                o++;
                 //  session.setAttribute("counter",o);
                  String sq = "update signup set checklogin=?,ldate=now() where email=?";
                  try{
                PreparedStatement ps1=con.prepareStatement(sq);
                ps1.setInt(1,o);
                ps1.setString(2, l.getEmail());
                if(ps1.executeUpdate()!=0)
                {
                     status=true;
                }
                  }
                  catch(Exception e)
                  {e.printStackTrace();
                  }
                }
               
       }
 catch (Exception e) {
     System.out.println("trhis");
           e.printStackTrace();
         }
           finally{
               try {
                   con.close();
               } catch (Exception e) {e.printStackTrace();
               }
}
                   return status;
}
  static public boolean forgate(User l){
                  Connection con=null;
                  boolean status=false;
             try
              {
               con=GetConnection.getConnect();
               String sql="update signup set password=? where email=?";
               PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1,l.getPass());
                ps.setString(2,l.getEmail());
                
                if(ps.executeUpdate()!=0)
                {
                   status=true;         
                }
              }
             catch(Exception e)
             {
             e.printStackTrace();}
                  return status;
  }
}
               //for search
//               public static ArrayList<login> serch(login l)
//               {Connection con=null;
//               ArrayList<login> al=new ArrayList<>();
//                   System.out.println("check"+l.getSrc());
//                   try {
//    con=GetConnection.getConnection();
//String sql="select * from topselect WHERE n LIKE ?"; 
//PreparedStatement ps=con.prepareStatement(sql);
//ps.setString(1,"%"+l.getSrc()+"%");
//ResultSet rs=ps.executeQuery();
//String name;
//int marks;
// while(rs.next())
// {
//    name=rs.getString("n");
//    marks=Integer.parseInt(rs.getString("mark"));
//    login l1=new login(name, marks);
//    al.add(l1);
// }
// } catch (Exception e)
// {e.printStackTrace();
//                   }
//             return al;
//               }
//}
//
//


