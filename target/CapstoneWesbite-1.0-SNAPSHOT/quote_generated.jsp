<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<title>SMJ - Your Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
            <div id="generatedQuoteDiv">
                <h1>Your Quote:</h1>
                <p id="quote_name">Name: (NAME HERE)</p>
                <p id="quote_auto_premium">Auto Policy Premium: $(VALUE HERE)</p>
                <p id="quote_property_premium">Property Policy Premium: $(VALUE HERE)</p>
                <p></p>
            </div>
        </div>
    </div>

</body>
<div id="specialFooter">
<%@include file='footer.jsp'%>
</div>
</html>
