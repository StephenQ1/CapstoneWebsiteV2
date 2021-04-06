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
            <p align="center" id="quoteResults">
                Name: <%= request.getParameter("customer_fName")%>
                <%= request.getParameter("customer_LName")%><br>
                Mobile Phone Number: <%= request.getParameter("phone_mobile")%><br>
                Email Address: <%= request.getParameter("email_address")%><br>
                Location: <%= request.getParameter("location")%><br>
                Driver Age: <%= request.getParameter("auto_driver_age")%><br>
                Vehicle Age: <%= request.getParameter("auto_age_years")%><br>
                Accident Count:<%= request.getParameter("auto_accident_count")%><br>
                Total: <var>calculation</var><br>


                <input type="button" value="Email me the Quote" onclick="sendEmail()" id="emailMe">
            </p>
        </div>
    </div>

</body>
<div id="specialFooter">
<%@include file='footer.jsp'%>
</div>
</html>
