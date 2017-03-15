<%-- 
    Document   : LKCBDisplayMember
    Created on : Jan 24, 2017, 5:46:02 PM
    Author     : lkaastra6885
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Member</title>
    </head>
    <body>
       
            <jsp:include page="LKCBBanner.jsp"/>
              
                <section>
            <h1>
                Thanks for Joining our club
            </h1>
            <br>
            <table>
                <tr>
                    <td>Full Name:</td>
                    <td>
                        ${param.fullname}
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        ${param.email}
                    </td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        ${param.phone}
                    </td>
                </tr>
                <tr>
                    <td>
                        IT Program:
                    </td>
                    <td>
                        ${param.program}
                    </td>
                </tr>
                <tr>
                    <td>
                        Year Level:
                    </td>
                    <td>
                        ${param.year}
                    </td>
                </tr>
            </table> 
                    <br>
                    <p>
                        To register another member, click on the back button in 
                        your browser or the return button below.
                    </p>
                    <br>
                    <form action="LKCBRegister.jsp">
                        <input type="submit" value="Return">
                    </form>
              
        </section>
        
        
            <jsp:include page="LKCBFooter.jsp"/>
        
    </body>
</html>
