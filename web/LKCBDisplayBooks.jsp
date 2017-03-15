<%-- 
    Document   : LKCBDisplayBooks
    Created on : Feb 22, 2017, 2:16:00 PM
    Author     : cbanks4667
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LKCB Computer Programming Club</title>
        <%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <jsp:include page="LKCBBanner.jsp"/>
        <h1>List of Books</h1>
        <table>
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item"
                           items="${books}">
                    <tr>
                        <td>${item.code}</td>
                        <td>${item.description}</td>
                        <td>${item.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
         <form action="LKCBAddBook.jsp">
               <input type="submit" value="Add Book">
         </form>
        
            <jsp:include page="LKCBFooter.jsp"/>
    </body>
</html>
