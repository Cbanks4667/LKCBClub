<%-- 
    Document   : index
    Created on : Jan 24, 2017, 4:30:32 PM
    Author     : lkaastra6885
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LKCB Computer Programming Club</title>
    </head>
    <body>
        
            <jsp:include page="LKCBBanner.jsp"/>
        
        <section>
            <h1>
                Java Web Technologies: Section 2
            </h1>
            <br>
            <p>
                Pair Programming Team:
            </p>
            <br>
            <h2>
                Assignment 2
            </h2>
            <br>
            <h3>
                Driver: Chris Banks
            </h3>
            <br>
            <h3>
                Observer: Lucas Kaastra
            </h3>
            <br>
            <p>
                Current Date and Time:
            </p>           
            <br>           
            <%= new java.util.Date() %>                       
            <br>        
            
        </section>
        
        
            <jsp:include page="LKCBFooter.jsp"/>
        
    </body>
</html>
