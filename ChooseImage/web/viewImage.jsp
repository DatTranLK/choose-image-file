<%-- 
    Document   : viewImage
    Created on : Jan 12, 2022, 10:11:21 AM
    Author     : jike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View image</h1>
        <%
            String id = request.getParameter("id");
        %>
        <img src="getImage.jsp?id=<%=id%>" width="400px">
    </body>
</html>
