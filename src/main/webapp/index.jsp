<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="index.css"/>
    <img src="headerBackground.jpg" alt="HeaderB" id="HeaderB" style="width:1920px;height:505px;">
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
<img src="bodyBackground.jpg" alt="BodyB" id="BodyB"style="width:1920px;height:768px;">
<div id="homeDiv">
<h3 id="homeTitle"> Let us Innovate you!</h3>
    <div id="blurbDiv">
<p id="homeBlurb1">SMJ Interactive is an experienced multimedia consulting company
    delivering a variety of business development solutions in the online realm,
    specializing in mobile applications and website development since 2018.
    </p><p id="homeBlurb2">Our mission is to
    provide software solutions that will give our clients the edge over their competitors.
    SMJ Interactive is a highly skilled team dedicated to giving our customers the best
    software solutions available.</p><p id="homeBlurb3">Our team is qualified in software development and design,
    employing use the latest and greatest modern tools available to create software that is
    versatile and has the most potential for longevity.You will find our services and our areas
    of expertise on the services page</p>
</div>
</div>
</body>
</html>