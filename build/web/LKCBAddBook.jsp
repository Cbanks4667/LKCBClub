<%-- 
    Document   : LKCBAddBook
    Created on : Feb 23, 2017, 8:37:58 AM
    Author     : cbanks4667
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LKCB Computer Programming Club</title>
    </head>
    <body>
        <jsp:include page="LKCBBanner.jsp"/>
        <h1>Add a Book</h1>
        <p style="color:red"><i>${message}</i></p>
        <form action="LKCBAddBook" method="post" id="addBookForm">
              <table>
                
                <tbody>
                    <tr>
                        <td>
                            <label for="code">Code:</label>
                        </td>
                        <td>
                            <input type="text" id="txtCode" name="txtCode" value="${book.code}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <label for="description">Description:</label>
                        </td>
                        <td>
                            <input type="text" id="txtDescription" name="txtDescription" value="${book.description}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="quantity">Quantity:</label>
                        </td>
                        <td>
                            <input type="text" id="txtQuantity" name="txtQuantity" value="${quantity}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="submit" id="btnSubmit" value="Save">                      
                            <input type="submit" id="btnCancel" value="Cancel" formaction="LKCBDisplayBooks">               
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <jsp:include page="LKCBFooter.jsp"/>
    </body>
</html>
