<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 2021-04-13
  Time: 9:44 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Show Previous Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<head>
</head>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteResults">
            <p align="center" id="previousQuote">
            <p>${final_Output} </p>
            <%--&lt;%&ndash;<p>${username} </p>&ndash;%&gt;--%>

            <%--</p>
                <input type="button" value="Email me the Quote" onclick="sendEmail()" id="emailMe">
            </p>--%>
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



<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: Owner
  Date: 2021-04-13
  Time: 9:44 a.m.
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Show Previous Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<head>
</head>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteResults">
            <p align="center" id="previousQuote">
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
--%>
