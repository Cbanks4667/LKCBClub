<%-- 
    Document   : LKCBError
    Created on : Feb 24, 2017, 12:47:18 PM
    Author     : cbanks4667
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>LKCB Computer Programming Club</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
 <jsp:include page="LKCBBanner.jsp"/>
<h1>Java Error</h1>
<p>Sorry, Java has thrown an exception.</p>
<p>To continue, click the Back button.</p>

<h2>Details</h2>
<p>Type: ${pageContext.exception["class"]}</p>
<p>Message: ${pageContext.exception.message}</p>
 <jsp:include page="LKCBFooter.jsp"/>
</body>
</html>