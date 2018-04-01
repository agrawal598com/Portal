<%-- 
    Document   : logout
    Created on : 17 Mar, 2018, 7:23:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    response.setHeader("Cache-Control","No-Store");

    session.setAttribute("username",null);
    session.invalidate();
    response.sendRedirect("index1.jsp");
%>