<%-- 
    Document   : UserDetail
    Created on : 25 Mar, 2018, 6:27:41 PM
    Author     : hp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.UserSignup"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.AdminDao"%>
<%
    response.setHeader("Cache-Control","No-Store");
String s=(String)session.getAttribute("username");
if(s!=null)
{
%>
<html>
    
<link href="style.css" rel="stylesheet" type="text/css"/>
<body style="background-color: springgreen">
<div id="manage-menu-music" style="background: violet; padding: 10px">
<div id="menu" style="margin-top: 30px">
<ul><li><a href="">Home</a></li>
    <li><a href="AddAdminContain.jsp">New Album</a></li>
    <li><a href="">Upload Music</a></li>
    <li><a href="">User Detail</a></li>
    <li><a href="">Logout</a></li>
</ul>
</div>
    </div>   

<center>
  
<table border="1" style="width:650px; height: 100px; margin-top: 150px ">
    <caption style="padding-bottom: 50px">User Detail!!!...</caption>
    <tr style="background-color: lime"><th>Name</th><th>Email</th><th>Password</th><th>Mobile</th><th>Login Times</th><th>Last Login</th></tr>
<%

ArrayList<UserSignup> al= AdminDao.UserDetail();
Iterator itr= al.iterator();
while(itr.hasNext())
{

   UserSignup u=(UserSignup)itr.next();
   %>
    <tr style="background-color: #ff3399;  "><td><%=u.getName()%></td><td><%=u.getEmail()%></td><td><%=u.getPass()%></td><td><%=u.getMobile()%></td><td><%=u.getCount()%></td><td><%=u.getLastlogin()%></td></tr>


<%
}
%>
</table>
</center>
<%}
else
response.sendRedirect("UserSeePage.jsp");

%>
</body>
</html>