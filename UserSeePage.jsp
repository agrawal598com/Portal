<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="service.GetConnection"%>
<html>
    <head><title>WelcomeMobile.Com</title>
        <script src="js/jquery.js" type="text/javascript"></script>
        <!--for validation-->
        <script src="vendor/jquery/dist/jquery.min.js"></script>

        <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>

        <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
        <script typr="text/javascript" src ="js/jquery.validate.js"></script>
<!--validation for-->
        <script>
            $(document).ready(function()
            {
               $('#login').validate(
                       {
                           rules:{
                          password:{
                              required:true,
                      maxlength:8,
                      minlength:8
                          }
              }
          });
      });
                     
            function checkEmail(email)
            {
               // alert("hello");
              var xhttp = new XMLHttpRequest(); 
              xhttp.open("GET","loginvalidate.jsp?email="+email,true); 
              xhttp.send();
              xhttp.onreadystatechange  = function(){
                   if(xhttp.status ==200 && xhttp.readyState == 4)
                    {
                       var res = xhttp.responseText;
                       document.getElementById("msg").innerHTML = res;
            
                    }     
            }
        }
        function checkPass(password)
            {
               // alert("hello");
            var xhttp = new XMLHttpRequest(); 
              xhttp.open("GET","loginvalidate.jsp?password="+password,true); 
              xhttp.send();
              xhttp.onreadystatechange  = function(){
                   if(xhttp.status ==200 && xhttp.readyState == 4)
                    {
                       var res = xhttp.responseText;
                       document.getElementById("msg1").innerHTML = res;
            
                    }     
            }
        }
            </script>
    </head>
    <style>
        .error{color: red}
    </style>
    <body bgcolor="lightgreen">
        <div style="position:inherit;">
    <center>
        <form action="Common.jsp" id="login" method="post" >
    <table style="margin: 180px; height: 200px" >
    <caption>Login</caption>
    <tr><td>UserName/Email:</td><td><input type="email" name="email" required="true"  onblur="checkEmail(this.value)"/></td></tr>
    <tr><td><span id="msg" style="color: red"></span></td></tr>
    <tr><td>Password:</td><td><input type="password" name="password" required="true" onblur="checkPass(this.value)"/></td>
    </tr><tr> <td><span id="msg1" style="color: red" ></span></td>
      </tr>
      
          

    <tr><td><input type="submit" value="Login" style="color: deeppink; background-color: springgreen"/></td></tr>
   <tr><td><a href="ForgatePass.jsp" style="color: black">Forgate Password..?</a></td></tr>
   <tr><td><a href="signup.jsp" style="color: black">SignUp..?</a></td></tr>
    </table>
        </form></center></div>
    <%
   
        Integer i=(Integer)session.getAttribute("coun");
        response.setContentType("text/html");
       //int i1=i.intValue()
       // out.print(i);
         Connection con =null;
   
      try {
           if(i==null)   
           {
                try {
                   con=GetConnection.getConnect();
                   String s="select * from visitweb where f = 'null' ";
                   PreparedStatement ps=con.prepareStatement(s);
                   ResultSet rs=ps.executeQuery();
                   if(rs.next())
                   {
                       int p=rs.getInt("checkweb");
                       try{
                       p++;
                String s1="update visitweb set checkweb=? where f='null'";
                PreparedStatement ps1=con.prepareStatement(s1);
                ps1.setInt(1,p);
                ps1.executeUpdate();
                session.setAttribute("coun",p);
                       }
                       catch(Exception e4)
                       {
                       e4.printStackTrace();
                       }
                     
                   }
          else{
               try{
            Integer in=new Integer(0);
            int i1=in.intValue();
            con = GetConnection.getConnect();
            String s1="insert into visitweb(checkweb,f)values(?,'null')";
            PreparedStatement ps1=con.prepareStatement(s1);
            ps1.setInt(1,i1);
            ps1.executeUpdate();
            Integer i2=new Integer(i1);
            session.setAttribute("coun",i2);
           }
           catch(Exception e)
           {
               e.printStackTrace();
               System.out.println("first");
           }
          
           }//else
           
                }    catch(Exception e5)
                {
                e5.printStackTrace();}
              
           }
      
      
     else
           {
           int i3=i.intValue();
           i3++;
           try {
                con=GetConnection.getConnect();
                String s="update visitweb set checkweb=? where f='null'";
                PreparedStatement ps=con.prepareStatement(s);
                ps.setInt(1,i3);
                ps.executeUpdate();
                session.setAttribute("coun",i3);
               } 
           catch (Exception e) {
                   e.printStackTrace();
               System.out.println("second");

               }
           finally
           {
               try {
                       con.close();
                   } catch (Exception e) 
                   {e.printStackTrace();
                  System.out.println("seconfinally");

                   }
           }
           }
          }
     catch (Exception e) 
          {
          }
  
    
    
    
    %>
    </body>
</html>