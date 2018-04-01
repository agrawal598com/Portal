<%-- 
    Document   : ManageMusic
    Created on : 25 Mar, 2018, 7:44:02 PM
    Author     : hp
--%>

<%@page import="Model.Bollywood"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.Latest"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOB"%>
<body style="background-color: mediumslateblue">
<link href="style.css" rel="stylesheet" type="text/css"/>

<div id="manage-menu-music" style="background: violet; padding: 10px">
<div id="menu" style="margin-top: 30px">
<ul><li><a href="">Home</a></li>
    <li><a href="AddAdminContain.jsp">New Album</a></li>
    <li><a href="">Upload Music</a></li>
    <li><a href="">User Detail</a></li>
    <li><a href="">Logout</a></li>
</ul>
</div></div>
<center>
  
<table border="1" style="width:650px; height: 100px ;margin-top: 140px">
    <caption style="padding-bottom: 50px">User Detail!!!...</caption>
    <tr><th>Album Name</th><th>Cover Photo</th><th>Manage</th></tr>
<%
        response.setHeader("Cache-Control","No-Store");

String s=(String)session.getAttribute("username");
if(s!=null)
{
ArrayList<Latest> al= DAOB.LatestDetail();
Iterator itr= al.iterator();
while(itr.hasNext())
{

   Latest u=(Latest)itr.next();
   %>
    <tr><td><%=u.getMname()%></td><td><%=u.getCphoto()%></td><td><a href="DeleteProduct.jsp?id=<%=u.getId()%>">Delete</a></td></tr>


<%
}
%>
</table>
</center>

<!--for Bollywood Detail-->


<center >
  
<table border="1" style="width:650px; height: 100px " >
    <caption style="padding-bottom: 50px; padding-top: 40px"   >User Detail!!!...</caption>
    <tr><th>Album Name</th><th>Cover Photo</th><th>Manage</th></tr>
<%

ArrayList<Bollywood> a= DAOB.BollywoodDetail();
Iterator itr1= a.iterator();
while(itr1.hasNext())
{

    Bollywood b=(Bollywood)itr1.next();
   %>
    <tr><td><%=b.getMname()%></td><td><%=b.getCphoto()%></td><td><a href="DeleteProduct.jsp?id=<%=b.getId()%>">Delete</a></td></tr>


<%
}
}
else
response.sendRedirect("UserSeePage.jsp");
%>
</table>
</center>
</body>