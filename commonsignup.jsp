<%-- 
    Document   : commonsignup
    Created on : 3 Mar, 2018, 5:29:57 PM
    Author     : hp
--%>

<%@page import="DAO.signupDB"%>
<%@page import="Model.UserSignup"%>
<%
    
String name=request.getParameter("uname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
//User u1=new User(name, email, pass, mobile);
 int count=0;
       Integer c= (Integer)session.getAttribute("counter");
        //String name=request.getParameter("usern");
        //String email=request.getParameter("usere");
       //String password=request.getParameter("userp");
      if(c==null)
      {
       Integer p=new Integer(1);
   //  out.print(p+"first");
       count =p.intValue();
     
     
       session.setAttribute("counter",p);
 // out.print("for"+v);
 }
          //   out.print(name+"....."+email);
UserSignup p1=new UserSignup(email, pass, name, mobile, count);
        if(signupDB.signupconfirm(p1))
        {
            response.sendRedirect("UserSeePage.jsp");
             }
        else
        {response.sendRedirect("signup.jsp");
        }
      // out.print(userDB.me());
               
       
       
   
%>
