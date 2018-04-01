<%-- 
    Document   : city
    Created on : 8 Mar, 2018, 9:43:42 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="service.GetConnection"%>
<%
   int id =Integer.parseInt(request.getParameter("sid"));
   if(id==1)
   {
  Connection con = null;
  String data = "";
  try{
   con = GetConnection.getConnect();
//   int s_id = Integer.parseInt(request.getParameter("sid"));
   String sql = "select movie_name,id from latest";
   PreparedStatement ps = con.prepareStatement(sql);
 // ps.setInt(1, id);
   ResultSet rs = ps.executeQuery();
   while(rs.next())
   {
     data = data +"<option value='"+rs.getInt("Id")+"'>"+rs.getString("movie_name")+"</option>";
   }
   out.print(data);
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
  }}
    if(id==2)
   {
  Connection con = null;
  String data = "";
  try{
   con = GetConnection.getConnect();
//   int s_id = Integer.parseInt(request.getParameter("sid"));
   String sql = "select movie_name,id from bollywood";
   PreparedStatement ps = con.prepareStatement(sql);
 // ps.setInt(1, id);
   ResultSet rs = ps.executeQuery();
   while(rs.next())
   {
     data = data +"<option value='"+rs.getInt("Id")+"'>"+rs.getString("movie_name")+"</option>";
   }
   out.print(data);
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
  }}
%>
