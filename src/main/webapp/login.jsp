<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<title>Taylor Insurance - Log-in</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>

<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteForm">
            <%--            <div id="loginForm">--%>
            <form method="post" enctype="application/x-www-form-urlencoded" action="login_successful.jsp">
                <h1> Login: </h1>
                <p>
                    <label>E-mail Address
                        <input type="text" name="email" required>
                    </label>
                </p>

                <p>
                    <label>Password
                        <input type="text" name="password" required>
                    </label>
                </p>

                <p><input style="width: 133px; height: 25px" align="center" type="submit" value="Log In" /></p>
            </form>
        </div>
    </div>
</div>
</body>
<div id="specialFooter">
    <%@include file='footer.jsp'%>
</div>
</html>





<%--<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<title>Taylor Insurance - Log-in</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>

<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
            <div id="quoteForm">
&lt;%&ndash;            <div id="loginForm">&ndash;%&gt;
                <form method="post" enctype="application/x-www-form-urlencoded" action="login_successful.jsp">
                    <h1> Login: </h1>
                    <p>
                        <label>E-mail Address
                            <input type="text" name="email" required>
                        </label>
                    </p>

                    <p>
                        <label>Password
                            <input type="text" name="password" required>
                        </label>
                    </p>

                    <p><input style="width: 133px; height: 25px" align="center" type="submit" value="Log In" /></p>
                </form>
            </div>
        </div>
    </div>
</body>
<div id="specialFooter">
    <%@include file='footer.jsp'%>
</div>
</html>--%>
