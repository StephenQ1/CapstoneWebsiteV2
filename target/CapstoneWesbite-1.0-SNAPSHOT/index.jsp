<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="index.css"/>
    <img src="headerBackground.jpg" alt="HeaderB" id="HeaderB" style="width:1350px;height:505px;">
    <img src="PRLogo.jpg" alt="Logo" id="Logo" style="width:275px;height:275px;">

    <h1><%= "SMJ Interactive" %></h1>
    <div class="mainNavBar">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="login.jsp">Login / Signup</a>
        <a href="help.jsp">Help</a>
    </div>
</head>
<body>
<br/>
<img src="bodyBackground.jpg" alt="BodyB" id="BodyB"style="width:1350px;height:768px;">
<p><h1 id="adBlurb">Delivering software solutions<br> and expertise <br>since 2018</h1></p>
</body>
</html>