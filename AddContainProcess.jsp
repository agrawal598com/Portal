<%@page import="DAO.DAOB"%>
<%@page import="Model.Bollywood"%>
<%@page import="DAO.AdminDao"%>
<%@page import="Model.Latest"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%
    int c_id = 0;
    int Mname = 0;
    String Wname = "";
    String Cphoto = "";
       response.setContentType("text/html");
    try{
      DiskFileItemFactory factory = new DiskFileItemFactory();
      ServletFileUpload upload = new ServletFileUpload(factory);
      List<FileItem>fileItem = upload.parseRequest(request);
      Iterator<FileItem>itr = fileItem.iterator();
      
      while(itr.hasNext())
      {
         FileItem item = itr.next();
          String fieldName = item.getFieldName();
         if(item.isFormField())
         {
            
             if(fieldName.equals("id"))
              c_id = Integer.parseInt(item.getString());
         }
              if(c_id==1)
              {
              if(item.isFormField())
              {
            
             if(fieldName.equals("m_name"))
                  Mname =Integer.parseInt(item.getString());
             else if(fieldName.equals("w_name"))
                  Wname = item.getString();
              
              }
         else
         {
           if(fieldName.equals("latest"))
           {
         //    out.print("Cover_photo :"+item.getName());
              Cphoto = item.getName();
              String  filePath =  getServletContext().getRealPath("/")+"latest\\"+Cphoto;
              String  filePath1 =  getServletContext().getRealPath("/")+"common\\"+Cphoto;

             // out.print(filePath);
              File f = new File(filePath);
              item.write(f);
               File f1 = new File(filePath1);
              item.write(f1);
           }
          
         
         }
      }
              if(c_id==2)
              {
              if(item.isFormField())
              {
            
             if(fieldName.equals("m_name"))
                  Mname =Integer.parseInt(item.getString());
             else if(fieldName.equals("w_name"))
                  Wname = item.getString();
              
              }
         else
         {
           if(fieldName.equals("latest"))
           {
         //    out.print("Cover_photo :"+item.getName());
              Cphoto = item.getName();
              String  filePath =  getServletContext().getRealPath("/")+"bollywood\\"+Cphoto;
              String  filePath1 =  getServletContext().getRealPath("/")+"common\\"+Cphoto;

             // out.print(filePath);
              File f = new File(filePath);
              item.write(f);
               File f1 = new File(filePath1);
              item.write(f1);
           }
          
         
         }
      }
      
      }
         
       //out.print("c_id =>"+c_id+"</br>Name =>"+ Mname+"</br>writer =>"+Wname+"...."+Cphoto);
//     Admin admin=new Admin(c_id, Mname, Wname, Cphoto, Mfile);
 if(c_id==1)
{ Latest l=new Latest(Mname,Wname, Cphoto);

     boolean b=AdminDao.ceckAdmin(l);

  if(b)
      {
          response.sendRedirect("AddAdminContain.jsp");
      %>
       <script>
//          alert("Succes");
//          window.location.href="AddAdminContain.jsp";
//       </script>
        <%
     }
  else{
     out.print("Operation Failed");
      }
}
if(c_id==2)
{ Bollywood b1=new Bollywood(Mname, Wname, Cphoto);

     boolean b=DAOB.ceckAdmin1(b1);

  if(b)
      {
response.sendRedirect("AddAdminContain.jsp");
      %>
       <script>
//          alert("Succes");
//          window.location.href="AddAdminContain.jsp";
//       </script>
        <%
     }
  else{
     out.print("Operation Failed");
      }
}
} catch(Exception e)
    {
       e.printStackTrace();
    }
%>