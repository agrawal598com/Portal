<%-- 
    Document   : loginvalidate
    Created on : 4 Mar, 2018, 4:19:36 PM
    Author     : hp
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
  Connection con = null;
  try{
   Class.forName("com.mysql.jdbc.Driver");
   con=GetConnection.getConnect();
   String email = request.getParameter("email");
   String password = request.getParameter("password");
   if(email!=null){
       if(email.equals("Admin@g.com")){
           session.setAttribute("username",email);
        out.print("Continue");}
       else{
   String sql = "select * from signup where email = ?";
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setString(1, email);
   //ps.setString(2, password);
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
       session.setAttribute("username",email);
        out.print("Continue");
   }
   else
    out.print("Email is Not exist");
   }
   }
   
   if(password!=null)
    {   email= (String)session.getAttribute("username");
        if(password.equals("Admin123")){
        out.print("ok");
        session.setAttribute("username","null");
        } 
    else{
        email=(String)session.getAttribute("username");
      String sql1 = "select * from signup where email = ? and password = ?";
      PreparedStatement ps1 = con.prepareStatement(sql1);

      ps1.setString(1, email);
   ps1.setString(2, password);
   ResultSet rs1 = ps1.executeQuery();
   
   if(rs1.next()){
   out.print("Ok");
   }
   else{
    out.print("Wrong");}
  }}
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
  String email1=request.getParameter("email1");
  try {
          con=GetConnection.getConnect();
          String s="select * from signup where email=?";
          PreparedStatement p=con.prepareStatement(s);
          p.setString(1,email1);
          ResultSet rs=p.executeQuery();
          if(rs.next()){out.print("Already Registerd");
          }
         
          }
      
  catch (Exception e) {
      }
  finally
  {try {
          con.close();
      } catch (Exception e) {
      }
  }
%>