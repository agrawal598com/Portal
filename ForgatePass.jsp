            <html>
                <head>
          <script src="js/jquery.js" type="text/javascript"></script>

          <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
          <script typr="text/javascript" src ="js/jquery.validate.js"></script>

                <link href="style.css" rel="stylesheet" type="text/css"/>
                        <script type="text/javascript">
             $(document).ready(function()
            {
               $('#forget').validate(
                       {
                           rules:{
                          
                         passtext:
                          {
                           required:true,
                           minlength:8,
                           maxlength:10
                           
                          },
                         
                          
                        emailtext:{
                              required:true,
                              email:true
                          }
                       
                           }
                       
                           });
                       });
                           
           
        </script>
               </head>
                <body bgcolor="lightgreen">
                <div class="forget">
                <form action="forgatepassprocess.jsp" id="forget" method="post">
                <table class="ta">
                    <tr><td>Email</td><td><input type="email" name="emailtext" required="true"></td></tr>
                <tr><td style="padding-right: 30px">New Password</td><td><input type="password"  name="passtext"></td></tr>
                <tr><td><input type="submit" value="Submit" style="color: #cc0099;background-color: #99ff33;" /></td></tr>
                </table>
                </form>
                </div>
       </body>
     </html>