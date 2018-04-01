<%-- 
    Document   : index
    Created on : 2 Mar, 2018, 12:46:12 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.js" type="text/javascript"></script>
<!--        above code use for validation-->
        <link href="style1.css" rel="stylesheet" type="text/css"/>
        <script src="vendor/jquery/dist/jquery.min.js"></script>

        <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>

        <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
        <!--<script type="text/javascript" src="js/jquery.js"></script>-->
        <script typr="text/javascript" src ="js/jquery.validate.js"></script>
                
<!--        <script src="jquery-3.1.1.js" type="text/javascript"></script>
        <script src="jquery.validate.js" type="text/javascript"></script>
        -->
        <script type="text/javascript">
            $(document).ready(function()
            {
               $('#registration').validate(
                       {
                           rules:{
                          uname:
                          {
                           required:true,
                           minlength:6,
                           maxlength:10},
                        
                           pass:
                          {
                           required:true,
                           minlength:8,
                           maxlength:10
                           
                          },
                          mobile:{
                           number:true,
                           required:true,
                                                      minlength:10,

                           maxlength:10
                          },
                         
                          
                         email:{
                              required:true,
                              email:true
                          }
                       
                           }
                       
                           });
                       });
                       
                    var res;       
           function checkEmail(email)
            {
               // alert("hello");
              var xhttp = new XMLHttpRequest(); 
              xhttp.open("GET","loginvalidate.jsp?email1="+email,true); 
              xhttp.send();
              xhttp.onreadystatechange  = function(){
                   if(xhttp.status ==200 && xhttp.readyState == 4)
                    {
                       res = xhttp.responseText;
                       document.getElementById("msg").innerHTML = res;
            
                    }     
            }
        }
        function check() {
            if(res.equals("null")){
alert("Already Exist!!!") ;}
else
{
   alert("Yes");
}   
        }
        </script>
    </head>
    <body>
        <div class="workarea">
            
        <h1>Create An Account!</h1>
        <form id="registration" action="commonsignup.jsp" method="post">
            <table class="tab">
                <tr><td>Name:</td><td><input type="text" name="uname" id="form_username"></td></tr>
<!--                    <td><span class="error_form" id="username_error_message"></span></td>-->
            
            <tr><td>Password:</td><td><input type="password" name="pass"  id="form_password"></td></tr>
<!--                    <td><span class="error_form" id="password_error_message"></span></td>-->
            
<tr><td>Mobile No.:</td><td><input type="text" name="mobile"  id="form_retype_password" ></td>
            </tr>
            <tr><td>Email:</td><td><input type="text"  name="email" id="form_email" onblur="checkEmail(this.value)"></td>
            </tr>
            <tr><td><span id="msg"></span></td></tr>
            <tr><td><input type="submit" class="sbmt_btn" value="Create Account"  onsubmit="check()"></td></tr>
                
                
            </table> 
          
        </form>
        </div>
    </body>
</html>
