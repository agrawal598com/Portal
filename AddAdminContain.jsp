<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="service.GetConnection"%>
<!DOCTYPE html>
<%
        response.setHeader("Cache-Control","No-Store");

String a=(String)session.getAttribute("username");
if(a!=null)
{%>
<html>
    <body style="background-color: silver">
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>

        <title>TODO supply a title</title>

    <div id="main" style="background-color: papayawhip">
                    <div id="header" style="background-color: violet;margin-top: -10px">

<div id="txt">
WelCome!
</div> <!-- txt div -->
</div> <!-- header div -->
<div id="menu" style="margin-top:  auto; background-color:  blueviolet">
<ul>
<li id="p1"><a href="index1.jsp">Home</a></li>
<li><a href="#">New Album</a></li>
<li><a href="AddMusicshow.jsp">Upload Music</a></li>
<li><a href="UserDetail.jsp">User Detail</a></li>
<li><a href="index.jsp">View Album</a></li>
<li><a href="ManageMusic.jsp">Manage Album</a></li>

<li><a href="logout.jsp">Logout</a></li>
</ul>
</div> <!-- menu div -->


                <center style="background-color: papayawhip">
                    <h3>Add Album Here...</h3>
                    <form action="AddContainProcess.jsp" enctype="multipart/form-data" method="post">
                        <table style="height: 250px">
                    <tr>
                        <td>
                            Category :
                        </td>
                        <td>
                            <select name ="id" required="true">
                                <%
                                 Connection  con=null;
                                 int id;
                                 String type;
                                    try{
                                    con=GetConnection.getConnect();
                                    String sql="select * from listalbum";
                                    PreparedStatement p=con.prepareStatement(sql);
                                    ResultSet rs=p.executeQuery();
                                            
                                while(rs.next())
                                {id=rs.getInt(1);
                                type=rs.getString(2);
                                       %>
                                       <option value="<%=id%>"><%=type%>
                                       </option>
                                      <% 
                                      } 
}                                    catch(Exception e)
{
out.print("first");
}


                                    
                                  
                                %>
                             </select>   
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Album Id :
                        </td>
                        <td>
                            <input type="text" name="m_name" required="true">
                        </td>
                    </tr>
                    <tr>
                        <td>
                       Movie Name      :
                        </td>
                        <td>
                            <input type="text" name="w_name" required="true">
                        </td>
                    </tr> 
                    <tr>
                        <td>
                      Cover_photo       :
                        </td>
                        <td>
                            <input type="file" name="latest" required="true" >
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
<!--                             <div id="footer">
    All rights reserved to &copy; 2018
            </div>
      -->
    </body>
</html>

<%}
else
response.sendRedirect("UserSeePage.jsp");
%>