<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<title>Taylor Insurance - Your Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
                <div id="quoteResults">
                    <p align="center" id="quoteResultsbody">
                        Name: <%= request.getParameter("customer_fName")%>
                        <%= request.getParameter("customer_LName")%><br>
                        Mobile Phone Number: <%= request.getParameter("phone_mobile")%><br>
                        Email Address: <%= request.getParameter("email_address")%><br>
                        Location: <%= request.getParameter("location")%><br>
                        Driver Age: <%= request.getParameter("auto_driver_age")%><br>
                        Vehicle Age: <%= request.getParameter("auto_age_years")%><br>
                        Property Policy Premium: $<%= request.getParameter("auto_age_years")%><br>
                        Auto Policy Premium: $<%= request.getParameter("auto_accident_count")%><br>
                        <input type="button" value="Email me the Quote" onclick="sendEmail()" id="emailMe">
                    </p>
                </div>
                <script>
                    function sendEmail(){
                        alert("Email sent.");
                    }
                </script>
        </div>
    </div>

</body>
<%@include file='footer.jsp'%>
</html>
