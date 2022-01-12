<%-- 
    Document   : show
    Created on : Jan 12, 2022, 9:37:40 AM
    Author     : jike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello !</h1>
        <form action="viewImage.jsp" method="POST">
            <input type="text" name="id" value="" required="required" placeholder="enter image id"/>
            <input type="submit" value="Show" name="btAction" />
        </form>
    </body>
</html>
