<%-- 
    Document   : DeleteProduct
    Created on : 31 Mar, 2018, 4:41:51 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
    int i=Integer.parseInt(request.getParameter("id"));
    Connection con=null;
    try {
         con=GetConnection.getConnect();
         String sql="select * from latest where id=?";
          PreparedStatement ps=con.prepareStatement(sql);
          ps.setInt(1, i);
          ResultSet rs=ps.executeQuery();
       if(rs.next())
          {
              String sql1="delete from latest where id=?";
          PreparedStatement ps1=con.prepareStatement(sql1);
          ps1.setInt(1, i);
              if(ps1.executeUpdate()!=0)
              {
                  String sql2="delete from mu where id=?";
                  PreparedStatement ps2=con.prepareStatement(sql2);
                  ps2.setInt(1, i);
                  if(ps2.executeUpdate()!=0)
                  {
                     String sql3="delete from cover where id=?";
                     PreparedStatement ps3=con.prepareStatement(sql3);
                     ps3.setInt(1, i);
                     if(ps3.executeUpdate()!=0)
                     {
                         response.sendRedirect("ManageMusic.jsp");
                     }
                     else
                      response.sendRedirect("ManageMusic.jsp");
                   

                  }
                   else
               response.sendRedirect("ManageMusic.jsp");
              }
          }
       else
       {
               String sql1="delete from bollywood where id=?";
          PreparedStatement ps1=con.prepareStatement(sql1);
          ps1.setInt(1, i);
              if(ps1.executeUpdate()!=0)
              {
                  String sql2="delete from mu where id=?";
                  PreparedStatement ps2=con.prepareStatement(sql2);
                  ps2.setInt(1, i);
                  if(ps2.executeUpdate()!=0)
                  {
                     String sql3="delete from cover where id=?";
                     PreparedStatement ps3=con.prepareStatement(sql3);
                     ps3.setInt(1, i);
                     if(ps3.executeUpdate()!=0)
                     {
                         response.sendRedirect("ManageMusic.jsp");
                     }
                      else
               response.sendRedirect("ManageMusic.jsp");
                  }
                   else
               response.sendRedirect("ManageMusic.jsp");
              }
       
       }
        } catch (Exception e) 
        {
        }
    finally{
    try {
          con.close();
        } catch (Exception e) {
        }
    }
%>