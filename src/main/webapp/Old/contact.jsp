<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 2021-03-22
  Time: 3:38 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>SMJ Interactive</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body>
<img src="../Photos/contactBackground.jpg" alt="BodyB" id="BodyB" style="width:1920px;height:768px;">
<h1 id="contactBlurb">Contact us using the information below and inquire about our rates!</h1>
<div id="contactDiv">
    <img src="../Photos/phone.jpg" alt="phone" id="contactPic" style="width:100px;height:100px;">
    <h3 id="contactTitle">Contact Support</h3>
    <p id="contactDescription">Feel free to contact our local support team for any and all issues/concerns that you have with our services!</p>
    <button id="contactButton" type="button"><a id="contactLink" href="../help.jsp">Contact Us!</a></button>
</div>
<div id="salesDiv">
    <img src="../Photos/computer.jpg" alt="computer" id="salesPic" style="width:100px;height:100px;">
    <h3 id="salesTitle">Talk to Sales</h3>
    <p id="salesDescription">Interested in our rates? Contact our local sale team for more info on what we can offer you!</p>
    <button id="salesButton" type="button"><a id="salesLink" href="../login.jsp">View our Sales!</a></button>
</div>

</body>
</html>
