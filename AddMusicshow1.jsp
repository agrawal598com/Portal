<%-- 
    Document   : AddMusicshow1
    Created on : 11 Mar, 2018, 3:20:43 PM
    Author     : hp
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int id=0;
String writer_name="";
String Music_file="";
Connection con=null;
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
            
             if(fieldName.equals("city"))
              id = Integer.parseInt(item.getString());
        
            
           else  if(fieldName.equals("w_name"))
                  writer_name =item.getString();
             
              }
         else
         {
           if(fieldName.equals("music"))
           {
         //    out.print("Cover_photo :"+item.getName());
               Music_file = item.getName();
               String  filePath =  getServletContext().getRealPath("/")+"Music\\"+Music_file;
             // out.print(filePath);
              File f = new File(filePath);
              item.write(f);
           }
          
         }
              }
     con=GetConnection.getConnect();
     String sql="insert into mu(id,writer_name,music_file)values(?,?,?)";
     PreparedStatement ps=con.prepareStatement(sql);
      ps.setInt(1,id);
     ps.setString(2, writer_name);
     ps.setString(3, Music_file);
     if(ps.executeUpdate()!=0)
     {
         
   response.sendRedirect("AddMusicshow.jsp");
     }
     else
     {
         out.print("Error");
     }
    } 
catch (Exception e)
    {
        e.printStackTrace();
    }
finally
{
    try {
       con.close();
    } catch (Exception e) {
    }
}

%>