<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 2021-03-22
  Time: 3:26 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <img src="headerBackground.jpg" alt="HeaderB" id="HeaderB" style="width:1920px;height:505px;">
    <img src="PRLogo.jpg" alt="Logo" id="Logo" style="width:275px;height:275px;">
    <link rel="stylesheet" href="services.css"/>
    <div class="servicesNavBar">
        <a href="index.jsp">Home</a>
        <a href="services.jsp">Services</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="login.jsp">Login / Signup</a>
        <a href="help.jsp">Help</a>
    </div>
</head>
<body>
<img src="servicesBackground.jpg" alt="BodyB" id="BodyB"style="width:1920px;height:768px;">
<div id="servicesPage">
<h1 id="serviceBlurb">What we offer.</h1>
<p id="serviceDescription">From design to execution, out expert combination of forward thinking,
    resourceful advice, skilled development  and advanced design give our customers the edge
    on their competition.
</p>
</div>
<div id="service1">
    <img src="quote.jpg" alt="Logo" id="growService" style="width:150px;height:150px;">
    <h3 id="growText">Grow</h3>
    <p id="growDescription">
        Marketing Ideas<br>
        Advertising Optimization<br>
        Competitive Prices<br>
        Sales Advice
    </p>
</div>
<div id="service2">
    <img src="phone.jpg" alt="Logo" id="consultService" style="width:150px;height:150px;">
    <h3 id="consultText">Consult</h3>
    <p id="consultDescription">
        Design Strategies<br>
        Innovative Approaches<br>
        Technology Architecture<br>
        Forward-Thinking Solutions
    </p>
</div>
<div id="service3">
    <img src="computer.jpg" alt="Logo" id="developService" style="width:150px;height:150px;">
    <h3 id="developText">Develop</h3>
    <p id="developDescription">
        Web Applications<br>
        Mobile Applications<br>
        System Development<br>
        Website Development
    </p>
</div>
<div id="service4">
    <img src="website.jpg" alt="Logo" id="designService" style="width:150px;height:150px;">
    <h3 id="designText">Design</h3>
    <p id="designDescription">
        Brand Identity Design<br>
        UI/UX Design<br>
        Company System Design<br>
        Graphic Design
    </p>
</div>
</body>
</html>
