<%@ page import="com.example.CapstoneWesbite.QuoteServlet" %>
<%@ page import="static java.lang.System.out" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>Taylor Insurance - Log-in Successful</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>

<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteForm">
            <h1 align="center" id="loginMessage" style="display: block">Log-in Successful!</h1>
            <p align="center" id="loginButton" style="display: block">
                E-mail Address: <%= request.getParameter("email")%><br>
                <%--Password: <%= request.getParameter("password")%><br>--%>

                    <%
                    QuoteServlet.userName = request.getParameter("email");
                    /*System.out.println("Printed from jsp file: " + QuoteServlet.userName);*/
                %>

                <%--<button style="width: 170px; height: 50px" onclick="location.href ='login_show_quote.jsp'">Show Previous Policies</button></p>--%>
                <%--<button style="width: 170px; height: 50px" onclick="location.href ='login_show_quote.jsp'">Show Previous Policies</button></p>--%>

            <form method="post" enctype="application/x-www-form-urlencoded" action="quoteServlet" >

                <p><input style="width: 133px; height: 25px"align="center" type="submit"value="Quote" /></p>

            </form>

        </div>
    </div>
</div>
</body>
<%@include file='footer.jsp'%>
</html>




<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>Taylor Insurance - Log-in Successful</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>

<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteForm">
        <h1 align="center" id="loginMessage" style="display: block">Log-in Successful!</h1>
        <p align="center" id="loginButton" style="display: block">
            E-mail Address: <%= request.getParameter("email")%><br>
            Password: <%= request.getParameter("password")%><br>
            <button style="width: 170px; height: 50px" onclick="location.href ='login_show_quote.jsp'">Show Previous Policies</button></p>

        </div>
    </div>
</div>
</body>
<%@include file='footer.jsp'%>
</html>
--%>
