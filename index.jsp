<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.AdminDao"%>
<%@page import="Model.Latest"%>
<!doctype html>
<html>
<head>
<!--        <link href="latest/jquerysctipttop.css" rel="stylesheet" type="text/css"/>

    <link href="jquerysctipttop.css" rel="stylesheet" type="text/css"/>
    -->
<link href="style.css" rel="stylesheet" type="text/css"/>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery e-search.js Plugin Demo</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="e-search.js"></script>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:  mediumslateblue">
  <style>   
img{
       width: 270px;
        margin-left: 40px;
        height: 190px;
    }
    li{padding-right: 10px;
    padding-left:  10px;
    list-style-type: none;
    display: inline;
    border-right: 2px solid black;
}ul{
    margin-top: 0px;
    text-align: center;
}
a
{
    color: black;
}
a:hover
{
    color: white;
}
h4
{
    margin-left: 40px
}
   </style>  
   <%    response.setHeader("Cache-Control","No-Store");

  String s=(String) session.getAttribute("username");
  if(s!=null){
      if(s.equals("Admin@g.com"))
      {
   %>
   <div id="jquery-script-menu" style="border-top: 0px; background:  violet">
   <div id="menu" style="margin-top: 30px">
  <ul><li><a href="index1.jsp">Home</a></li>
    <li><a href="AddAdminContain.jsp">New Album</a></li>
       <li><a href="AddMusicshow.jsp">Upload Music</a></li>
    <li><a href="UserDetail.jsp">User Detail</a></li>
 
<!--    <li><a href="AddMusicshow.jsp">Upload Music</a></li>
    <li><a href="UserDetail.jsp">User Detail</a></li>-->
    <li><a href="logout.jsp">Logout</a></li>
</ul>
</div>
</div>
  
  <%
  }
else
{
  %> 
   
   
   <div id="jquery-script-menu" style="border-top: 0px; background:  violet">
   <div id="menu" style="margin-top: 30px">
  <ul><li><a href="index1.jsp">Home</a></li>
    <li><a href="#">View Album</a></li>
       <li><a href="index1.jsp#about">About Us</a></li>
    <li><a href="index1.jsp#contact">Contact</a></li>
 
<!--    <li><a href="AddMusicshow.jsp">Upload Music</a></li>
    <li><a href="UserDetail.jsp">User Detail</a></li>-->
    <li><a href="logout.jsp">Logout</a></li>
</ul>
</div>
</div>
     <%}%>               
<div class="container" style="margin:150px auto 30px auto;">
	<div class="row">
		<div class="col-md-12">
                    <%
                    if(s.equals("Admin@g.com"))
      {
                    %>
                    <h1><i>Welome Admin</i></h1>
                    <%
                    }
                    else
{ String s2="";
Latest l=new Latest();
Connection con=null;
try {
         con=GetConnection.getConnect();
String s1="select name from signup where email=?";
PreparedStatement ps=con.prepareStatement(s1);
ps.setString(1,s);
ResultSet rs=ps.executeQuery();

while(rs.next())
{
%>
<h1><i>Welome <%=rs.getString("name")%></i></h1>
<%
}
} catch (Exception e) {
}
finally
{
try {
        con.close();
    } catch (Exception e) {
    }
}}
%>

                  
			<p>Type some text to search:</p>
			<input type="text" class="form-control search-game" placeholder="Search Album..."> </div>
		</div>
	</div>

<h3>Latest</h3>
<div class="container">
<div class="row containerItems"> 	
          
             <%
           ArrayList<Latest>al =AdminDao.select();
          

            Iterator<Latest>itr = al.iterator();
           while(itr.hasNext())
           {
           Latest ad= itr.next();
                    %>
                     
                    <div data-filter="beroy knightmobile html accion" data-search="<%=ad.getMname()%>" class="col-12 col-sm-6 col-md-4" style="">
            <div class="card card-lg">

              <div class="card-img">
          <!--for image-->      
                  <a>
                  <img src="latest/<%=ad.getCphoto()%>" class="card-img-top" alt=""> </a>
                <!--<div class="badge badge-pc">ACTION</div>-->
              </div>
<!--for Name-->
              <div class="card-block">
                <h4 class="card-title">
                 <%=ad.getMname()%>
                </h4>
                 <a href="AfterClickPlay.jsp?id=<%=ad.getId()%>" style="margin-left: 40px">play</a>
              </div>

            </div>
		</div>
         
     

    <%
        
}
%>
    </div>
</div>            
  
    <h1>bollywood</h1>


<div class="container">
	<div class="row containerItems">
             <%
           ArrayList<Latest>al1 =AdminDao.selectB();
          

            Iterator<Latest>itr1 = al1.iterator();
           while(itr1.hasNext())
           {
           Latest ad= itr1.next();
            %>
		<div data-search="<%=ad.getMname()%>" class="col-12 col-sm-6 col-md-4" style="">
            <div class="card card-lg">

              <div class="card-img">
                <a>
                  <img src="bollywood/<%=ad.getCphoto()%>" class="card-img-top" alt="Vampire Cannon"> </a>
                <div class="badge badge-pc">ACTION</div>
              </div>

              <div class="card-block">
                <h4 class="card-title">
                <%=ad.getMname()%>
                </h4>
                                 <a href="AfterClickPlay.jsp?id=<%=ad.getId()%>" style="margin-left: 40px">play</a>

              </div>

            </div>
		</div>
<%}%>
     </div>
</div>
 
    <script type="text/javascript">
    	     $('input.form-control.search-game').search(function(){

          		//execute after done typing.

      });
    </script>
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' === document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';

//        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
<%
}
else
response.sendRedirect("UserSeePage.jsp");
%>