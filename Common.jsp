<%@page import="service.GetConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.loginDB"%>
<%@page import="Model.User"%>
<%
   String Uname;
   String Upass;
   Uname=request.getParameter("email");
   Upass=request.getParameter("password");
      if((Uname.equals("Admin@g.com"))&&(Upass.equals("Admin123")))
      {
          session.setAttribute("username",Uname);
          response.sendRedirect("index.jsp");
      }  
else
      {
        
      
          
        User u=new User(Uname, Upass);
        boolean b=loginDB.validlogin(u);
        if(b)
        {
           session.setAttribute("username",Uname);
            response.sendRedirect("index.jsp");
        }
        else
        {
        response.sendRedirect("UserSeePage.jsp");
        //response.sendRedirect("#");
        }
          
      }
        
        %>