<%-- 
    Document   : forgatepassprocess
    Created on : 5 Mar, 2018, 11:10:03 AM
    Author     : hp
--%>

<%@page import="DAO.loginDB"%>
<%@page import="Model.User"%>
<%
    String email=request.getParameter("emailtext");
    String pass=request.getParameter("passtext");
    User u=new User(email, pass);
    if(loginDB.forgate(u))
    {
        response.sendRedirect("UserSeePage.jsp");
    }
    else
    {
        response.sendRedirect("ForgatePass.jsp");
    }
%>