/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Bollywood;
import Model.Latest;
import Model.UserSignup;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import service.GetConnection;

/**
 *
 * @author hp
 */
public class AdminDao {
    
    public  static boolean ceckAdmin(Latest ad)
    {  
      Connection con = null;
      boolean status = false;
      try{
          con = GetConnection.getConnect();
          String sql = "insert into latest(Id,movie_name,cover_photo) values(?,?,?)";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1,ad.getId());
          ps.setString(2, ad.getMname());
          ps.setString(3,ad.getCphoto());
         if(ps.executeUpdate()!=0){
          String sql1 = "insert into cover(id,cover) values(?,?)";
          PreparedStatement ps1 = con.prepareStatement(sql1);
          ps1.setInt(1,ad.getId());
          ps1.setString(2,ad.getCphoto());
         if(ps1.executeUpdate()!=0)
         {
//          String sql2 = "insert into albumEntry(id,albumname) values(?,?)";
//          PreparedStatement ps2 = con.prepareStatement(sql2);
//          ps2.setInt(1,ad.getId());
//          ps2.setString(2,ad.getMname());
//          if(ps2.executeUpdate()!=0){
//       
             status = true;
}
          }
      }
      catch(Exception e)
      {
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
     public static  ArrayList<Latest> select()
     {
       Connection con=null;
   int id;
   String Mname;
   
   String Cphoto;
   ArrayList<Latest> al=new ArrayList<>();
       try{
           con=GetConnection.getConnect();
           String sql="select * from latest ";
           PreparedStatement ps=con.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
            id=rs.getInt("id");
           Mname=rs.getString("movie_name");
          Cphoto=rs.getString("cover_photo");
     Latest l=new Latest();
     l.setId(id);
     l.setMname(Mname);
     l.setCphoto(Cphoto);
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
     public static  ArrayList<Latest> selectB()
     {
       Connection con=null;
   int id;
   String Mname;
   
   String Cphoto;
   ArrayList<Latest> al=new ArrayList<>();
       try{
           con=GetConnection.getConnect();
           String sql="select * from bollywood ";
           PreparedStatement ps=con.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
            id=rs.getInt("id");
           Mname=rs.getString("movie_name");
          Cphoto=rs.getString("cover_photo");
     Latest l=new Latest();
     l.setId(id);
     l.setMname(Mname);
     l.setCphoto(Cphoto);
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
       public static  ArrayList<Latest> show(Latest l)
     {
       Connection con=null;
   
   String writer_name;
   
   String music_file;
   ArrayList<Latest> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
           String sql="select writer_name,music_file  from mu where id=?";
           PreparedStatement ps=con.prepareStatement(sql);
           ps.setInt(1,l.getId());
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
           writer_name=rs.getString("writer_name");
           music_file=rs.getString("music_file");
              Latest l1=new Latest();

           l1.setMname(writer_name);
           l1.setCphoto(music_file);
           al.add(l1);
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
         public static  ArrayList<Latest> show2(Latest l)
     {
       Connection con=null;
   
   String writer_name;
   
   String music_file;
   ArrayList<Latest> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
           String sql="select writer_name,music_file  from mu where id=?";
           PreparedStatement ps=con.prepareStatement(sql);
           ps.setInt(1,l.getId());
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
           writer_name=rs.getString("writer_name");
           music_file=rs.getString("music_file");
              Latest l1=new Latest();

           l1.setMname(writer_name);
           l1.setCphoto(music_file);
           al.add(l1);
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
       public static  ArrayList<Latest> show1(Latest l)
     {
       Connection con=null;
   
   
   ArrayList<Latest> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
 String sql1="select cover from cover where id=?";
PreparedStatement ps1=con.prepareStatement(sql1);
 ps1.setInt(1,l.getId());
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{              
    Latest l2=new Latest();
    l2.setC1photo(rs1.getString("cover"));
    al.add(l2);
}
}
       catch(Exception e){}
       finally{try {
               con.close();
           } catch (Exception e) {
           }
}
  return al; }
       
       //for User Detail
       
         public static  ArrayList<UserSignup> UserDetail()
     {
       Connection con=null;
   
  
   ArrayList<UserSignup> al=new ArrayList<>();

       try{
           con=GetConnection.getConnect();
           String sql="select * from signup ";
           PreparedStatement ps=con.prepareStatement(sql);
         
           ResultSet rs=ps.executeQuery();
                   
           while(rs.next())
           {
           UserSignup u1=new UserSignup();
           u1.setName(rs.getString("name"));
           u1.setEmail(rs.getString("email"));
           u1.setPass(rs.getString("password"));
           u1.setMobile(rs.getString("mobile"));
           u1.setCount(rs.getInt("checklogin"));
          u1.setLastlogin(rs.getString("ldate"));
           al.add(u1);
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

       