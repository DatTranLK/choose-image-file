<%-- 
    Document   : getImage
    Created on : Jan 12, 2022, 10:01:49 AM
    Author     : jike
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dattt.utils.DBHelpers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    try{
        Connection con = DBHelpers.makeConnection();
        if(con != null){
            String sql = "Select * "
                    + "From Pictures "
                    + "Where id = ? ";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Blob blob = rs.getBlob("image");
                byte byteArray[] = blob.getBytes(1, (int)blob.length());
                response.setContentType("image/gif");
                OutputStream os = response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
            }else{
                System.out.println("No image found with this id");
            }
        }
    }catch(Exception ex){
        out.print(ex);
    }
%>
