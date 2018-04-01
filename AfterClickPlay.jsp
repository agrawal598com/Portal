<%-- 
    Document   : AfterClickPlay
    Created on : 11 Mar, 2018, 4:00:16 PM
    Author     : hp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.AdminDao"%>
<%@page import="Model.Latest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
     String s=(String)session.getAttribute("username");
     if(s!=null){
%>
<body style="background-color: mediumslateblue">
<link href="style.css" rel="stylesheet" type="text/css"/>
<%
if(s.equals("Admin@g.com")){
%>
<div id="manage-menu-music" style="background: violet; padding: 10px">
<div id="menu" style="margin-top: 30px">
    <ul><li><a href="index1.jsp">Home</a></li>
    <li><a href="AddAdminContain.jsp">New Album</a></li>
    <li><a href="AddMusicshow.jsp">Upload Music</a></li>
    <li><a href="UserDetail.jsp">User Detail</a></li>
    <li><a href="ManageMusic.jsp">Manage Album</a></li>

    <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div></div>
<%
}
else
{
%>
<div id="manage-menu-music" style="background: violet; padding: 10px">
<div id="menu" style="margin-top: 30px">
    <ul><li><a href="index1.jsp">Home</a></li>
    <li><a href="index.jsp">View Album</a></li>
    <li><a href="index1.jsp#about">About Us</a></li>
    <li><a href="index1.jsp#contact">Contact</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div></div>
<%
}
%>
  <style>
    img{
        margin-top: 130px;
        width: 200px;
        margin-left: 40px;
        height: 150px;
        border-style: solid;
    }
  </style>
     
<%
int id=Integer.parseInt(request.getParameter("id"));
Latest l=new Latest();
l.setId(id);

ArrayList<Latest> al1=AdminDao.show1(l);
Iterator<Latest> it1=al1.iterator();
while (it1.hasNext()) 
{
    Latest l2=it1.next();
%>

<center>    <img src="common/<%=l2.getC1photo()%>"/></center>

<center  style="padding-top: 100px" ><table border="1" style="width:650px; height: 100px " >
                   <tr>
                       <th>Writer Name</th>
                       <th>Music Name</th>
                       <th>Play</th>
                       <th>Download</th>
<!--                       <th>Description</th>-->
                   </tr>
<%

}
if(id==1){
ArrayList<Latest> al=AdminDao.show(l);
Iterator<Latest> it=al.iterator();
while (it.hasNext()) 
{
     Latest l3= it.next();
      %>
     
      <tr>
<!--          <td style="padding-top: 50px">-->
<td><%=l3.getMname()%></td><td><%=l3.getCphoto()%></td><td><a href="Music/<%=l3.getCphoto()%>">Play</a></td><td><a href="Music/<%=l3.getCphoto()%>" download="">Down</a></td></br></br>
  
                <!--</td>-->
            </tr>
    
<%  
}}
else
{ArrayList<Latest> al=AdminDao.show2(l);
Iterator<Latest> it=al.iterator();
while (it.hasNext()) 
{
     Latest l3= it.next();
 

%>

   <tr>
<!--          <td style="padding-top: 50px">-->
<td><%=l3.getMname()%></td><td><%=l3.getCphoto()%></td><td><a href="Music/<%=l3.getCphoto()%>">Play</a></td><td><a href="Music/<%=l3.getCphoto()%>" download="">Down</a></td></br></br>
  
                <!--</td>-->
            </tr>           
            <%}}%>
  </table>
</center>
</body>
<%
}
else
response.sendRedirect("UserSeePage.jsp");
%>