<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>SMJ - Your Quote</title>
<%@include file='head2.jsp'%>
<%@include file='header2.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<script>
    function sendEmail() {
        alert("Email Sent");
    }
</script>
<script>

    let accidents = document.getElementById("autoAccidentCount");
    function alertMe(){
        alert(accidents);
    }

</script>
    <div class="pageContent">
        <div class="contentContainer">
            <p align="center">
                <input type="button" value="test" onclick="alertMe()" id="test">
            </p>
            <p align="center">
                <input type="button" value="Email me the Quote" onclick="sendEmail()" id="emailMe">
            </p>

        </div>
    </div>
</body>
<div id="specialFooter">
<%@include file='footer.jsp'%>
</div>
</html>
