<%-- 
    Document   : FillInfor
    Created on : Jan 11, 2022, 7:15:36 PM
    Author     : jike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fill Page</title>
    </head>
    <body>
        <form action="UploadServlet" method="POST" enctype="multipart/form-data">
            Photo: <input type="file" name="photo" value="" /><br/>
            <input type="submit" value="Upload" name="btAction" />
        </form>
    </body>
</html>
