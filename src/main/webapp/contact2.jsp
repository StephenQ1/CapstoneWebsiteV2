<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>SMJ - Contact Us</title>
<%@include file='head2.jsp'%>
<%@include file='header2.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="servicesBlurb">
            <h1>Contact SMJ Interactive</h1>
            <p>Reach out to us using the information below and inquire about our rates!</p>
        </div>
        <div class="row">
            <div class="column">
                <img src="Photos/phone.jpg" alt="phone" id="contactPic" style="width:100px;height:100px;">
                <h3 id="contactTitle">By Telephone</h3>
                <p id="contactDescription">Call our toll free number to reach one of our highly-skilled agents!</p>
                <h5>1-800-123-4567</h5>
                <p> TODO: put a table of business hours here</p>
                <%--<button id="contactButton" type="button"><a id="contactLink" href="help.jsp">Contact Us!</a></button>--%>
            </div>
            <div class="column">
                <img src="Photos/computer.jpg" alt="computer" id="salesPic" style="width:100px;height:100px;">
                <h3 id="salesTitle">By E-mail</h3>
                <p id="salesDescription">Email us directly and we will reply within 48 business hours!</p>
                <address><h5><a href="mailto:sales@smjinteractive.com">Click here</a></h5></address>
            </div>
        </div>
    </div>
</div>

</body>
</html>
