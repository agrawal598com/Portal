
package DAO;

import Model.Bollywood;
import Model.Latest;
import Model.UserSignup;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import service.GetConnection;

public class DAOB {
  public  static boolean ceckAdmin1(Bollywood ad)
    {  
      Connection con = null;
      boolean status = false;
      try{
          con = GetConnection.getConnect();
          String sql = "insert into bollywood(Id,movie_name,cover_photo) values(?,?,?)";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1,ad.getId());
          ps.setString(2, ad.getMname());
          ps.setString(3,ad.getCphoto());
         // System.out.println("");
         if(ps.executeUpdate()!=0){
          String sql1 = "insert into cover(id,cover) values(?,?)";
          PreparedStatement ps1 = con.prepareStatement(sql1);
          ps1.setInt(1,ad.getId());
          ps1.setString(2,ad.getCphoto());
          
         if(ps1.executeUpdate()!=0){
           
           status = true;
}
    
          } 
          
      
      }
      catch(Exception e)
      {
          System.out.println("second method");
         e.printStackTrace();
      }
      finally{
         try{
           con.close();
         }
         catch(Exception e)
         {
           e.printStackTrace();
         }
      }
      return status;
   }
//for Manage Music & See Album
     public static  ArrayList<Latest> LatestDetail()
     {
       Connection con=null;
   
  
   ArrayList<Latest> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
           String sql="select * from latest ";
           PreparedStatement ps=con.prepareStatement(sql);
         
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
               
           Latest l=new Latest();
           l.setId(rs.getInt("id"));
           l.setMname(rs.getString("movie_name"));
           l.setCphoto(rs.getString("cover_photo"));
           al.add(l);
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
   return al;
   }  
     
     //for Bollywood Management.
     
     
     
     public static  ArrayList<Bollywood> BollywoodDetail()
     {
       Connection con=null;
   
  
   ArrayList<Bollywood> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
           String sql="select * from bollywood ";
           PreparedStatement ps=con.prepareStatement(sql);
         
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
               
          Bollywood b=new Bollywood();
           b.setId(rs.getInt("id"));
           b.setMname(rs.getString("movie_name"));
           b.setCphoto(rs.getString("cover_photo"));
           al.add(b);
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
   return al;
   }  
}
