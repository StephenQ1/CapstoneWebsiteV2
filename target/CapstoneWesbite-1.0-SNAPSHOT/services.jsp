<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>Taylor Insurance - Services</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>

<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/servicesBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="servicesBlurb">
            <h1>What We Offer</h1>
            <p>From service to execution, our expert combination of forward thinking, resourceful advice,
                caring staff, and competitive rates gives our customers the best insurance experience.</p>
    </div>
    <div class="row">
        <div id="service1" class="column">
            <img src="Photos/quote.jpg" alt="Logo" id="growService" style="width:150px;height:150px;">
            <h2 id="growText">Coverage</h2>
            <p id="growDescription">
                Home Insurance<br>
                Auto Insurance<br>
                Competitive Prices<br>
            </p>
        </div>
        <div id="service2" class="column">
            <img src="Photos/phone.jpg" alt="Logo" id="consultService" style="width:150px;height:150px;">
            <h2 id="consultText">Consultation</h2>
            <p id="consultDescription">
                Insurance Strategies<br>
                Innovative Approaches<br>
                Modern Solutions
            </p>
        </div>
        <div id="service3" class="column">
            <img src="Photos/computer.jpg" alt="Logo" id="developService" style="width:150px;height:150px;">
            <h2 id="developText">Technology</h2>
            <p id="developDescription">
                Web Access<br>
                Mobile Access<br>
                Data Security
            </p>
        </div>
        <div id="service4" class="column">
            <img src="Photos/website.jpg" alt="Logo" id="designService" style="width:150px;height:150px;">
            <h2 id="designText">Outreach</h2>
            <p id="designDescription">
                Known Worldwide<br>
                Investing in NL<br>
                Non-profit Contributions
            </p>
        </div>
    </div>
    </div></div>
</body>
<%@include file='footer.jsp'%>
</html>
