<%-- 
    Document   : AddMusic
    Created on : 8 Mar, 2018, 7:30:36 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="service.GetConnection"%>
<!DOCTYPE html>
<%   
    response.setHeader("Cache-Control","No-Store");

String s=(String)session.getAttribute("username");
if(s!=null){
    

%>
<html>
    <body style="background-color: silver">
    <head>
                <link href="style.css" rel="stylesheet" type="text/css"/>

        <title>TODO supply a title</title>

             <script>
            function getcity(sid)
            {
                
        //alert("hell");
               
               var xhttp = new XMLHttpRequest();
               xhttp.open("GET","city.jsp?sid="+sid,true);
               xhttp.send();
               xhttp.onreadystatechange = function (){
                  if(xhttp.status==200 && xhttp.readyState==4)
                  {
                    document.getElementById("city").innerHTML=xhttp.responseText;  
                  }
               }
                   
           }
        </script>
    </head>
    <body>

        <div id="main" style="background-color: papayawhip">
            <div id="header" style="background-color: violet;margin-top: -10px">

<div id="txt">
WelCome!
</div> <!-- txt div -->
</div> <!-- header div -->
<div id="menu" style="margin-top: auto; background-color: blueviolet">
<ul>
<li id="p1"><a href="">Home</a></li>
<li><a href="AddAdminContain.jsp">New Album</a></li>
<li><a href="#">Upload Music</a></li>
<li><a href="UserDeatil.jsp">User Detail</a></li>
<li><a href="index.jsp">View Album</a></li>
<li><a href="ManageMusic.jsp">Manage Album</a></li>

<li><a href="logout.jsp">Logout</a></li>
</ul>
</div> <!-- menu div -->

                <center>
                    <h3>Add Music Here...</h3>
                    <form action="AddMusicshow1.jsp" enctype="multipart/form-data" method="post">
                        <table style="height: 250px">
                    <tr>
                        <td>
                            Album Name :
                        </td>
                        <td>
                            <select onclick="getcity(this.value)">
                                <%
                                 Connection  con=null;
                                 int id;
                                 String type;
                                    try{
                                    con=GetConnection.getConnect();
                                    String sql="select * from listalbum ";
                                    PreparedStatement p=con.prepareStatement(sql);
                                    ResultSet rs=p.executeQuery();
                                            
                                while(rs.next())
                                {id=rs.getInt("Id");
                                type=rs.getString("type");
                                       %>
                                       <option value="<%=id%>" selected="" ><%=type%> 
                                       </option>
                                      <% 
                                      } 
}                                    catch(Exception e)
{
out.print("first");
}


                                    
                                  
                                %>
                             </select>   
                             <select id="city" name="city" required="true">
                                 
                             </select>
                        </td>
                    </tr>
<!--                    <tr>
                        <td>
                           Album Id :
                        </td>
                        <td>
                            <input type="text" name="m_name" required="true">
                        </td>
                    </tr>-->
                    <tr>
                        <td>
                      Writer Name      :
                        </td>
                        <td>
                            <input type="text" name="w_name" required="true">
                        </td>
                    </tr> 
                    <tr>
                        <td>
                      Music File       :
                        </td>
                        <td>
                            <input type="file" name="music" required="true" >
                        </td>
                    </tr>
<!--                                        <tr>
                        <td>
                      Music_file       :
                        </td>
                        <td>
                            <input type="file" name="music_file" >
                        </td>
                    </tr>-->

                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="ADD" />
                        </td>
                    </tr>
                </table>
                </form>
               </center>              
                             <div id="head" style="background-color: violet">
                      <center style="background-color: violet">    <h2>All rights reserved to &copy; 2018</h2></center>

</div> <!-- header div -->
        </div>
    </body>
</html>

<%
}
else
response.sendRedirect("UserSeePage.jsp");
%>