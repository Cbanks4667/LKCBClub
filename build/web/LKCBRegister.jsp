<%-- 
    Document   : LKCBRegister
    Created on : Jan 24, 2017, 5:27:10 PM
    Author     : lkaastra6885
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css">
        <title>LKCB Computer Programming Club</title>
    </head>
    <body>
        <header>
            <jsp:include page="LKCBBanner.jsp"/>
        </header>
        <section>
            <h1>
                New Member Registration Form
            </h1>
            <br>
            <form action="LKCBDisplayMember.jsp" method="post">
                <table>
                    <tr>
                        <td>Full Name:</td>
                        <td>
                            <input id="fullname" name="fullname" type="text" required style= "width:200px">
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <input id="email" name="email" type="email" required style = "width:300px">
                        </td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td>
                            <input id="phone" name="phone" type="text" style = "width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            IT Program:
                        </td>
                        <td>
                            <select id="program" name="program">
                                <option value="CAD">CAD</option>
                                <option value="CP">CP</option>
                                <option value="CPA">CPA</option>
                                <option value="ITID">ITID</option>
                                <option value="ITSS">ITSS</option>
                                <option value="MSD">MSD</option>
                                <option value="others">Others</option>                               
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Year Level:
                        </td>
                        <td>
                            <select id="year" name="year">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>                              
                            </select>
                        </td>
                    </tr>
                    
                </table>
                <input type="submit" value="Register Now">
                <input type="reset" value="Reset">
            </form>                        
        </section>
        
        <footer>
            <jsp:include page="LKCBFooter.jsp"/>
        </footer>
    </body>
</html>
