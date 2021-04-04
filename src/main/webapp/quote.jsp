<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>SMJ - Get a Quote</title>
<%@include file='head2.jsp'%>
<%@include file='header2.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
            <div id="servicesBlurb">
                <h1>Generate Your Quote Here!</h1>
                <p>Using our patented and secure technology, you can now a generate a quote online!</p>
                <p>To get your quote, please complete the form below and click Submit.</p>
                <p>Our system will calculate your personalized quote using our most up-to-date rates.</p>
            </div>

            <div id="quoteForm">
                <form method="get" enctype="application/x-www-form-urlencoded" action="/html/codes/html_form_handler.cfm">

                    <fieldset>
                        <legend>Personal Details</legend>

                    <p>
                        <label>Title
                            <select id="quote_title" name="title">
                                <option value="" selected="selected">Select One</option>
                                <option value="title_mr" >Mr.</option>
                                <option value="title_ms" >Ms.</option>
                                <option value="title_mrs" >Mrs.</option>
                                <option value="title_dr" >Dr.</option>
                                <option value="title_esq" >Esq.</option>
                                <option value="title_hon" >Hon.</option>
                                <option value="title_prof" >Prof.</option>
                            </select>
                        </label>
                    </p>

                    <p>
                        <label>First Name
                            <input type="text" name="customer_fName" required>
                        </label>
                    </p>

                    <p>
                        <label>Last Name
                            <input type="text" name="customer_LName" required>
                        </label>
                    </p>

                    <p>
                        <label>Date of Birth
                            <input type="datetime-local" name="dob" required>
                        </label>
                    </p>

                    <p>
                        <label>Home Phone
                            <input type="tel" name="phone_home">
                        </label>
                    </p>

                    <p>
                        <label>Work Phone
                            <input type="tel" name="phone_work">
                        </label>
                    </p>

                    <p>
                        <label>Mobile Phone
                            <input type="tel" name="phone_mobile">
                        </label>
                    </p>

                    <p>
                        <label>Email Address
                            <input type="email" name="email_address">
                        </label>
                    </p>
                    </fieldset>

                    <fieldset>
                        <legend>Property Details</legend>

                    <p>
                        <label>Property Age (Years)
                            <input type="number" name="property_age">
                        </label>
                    </p>

                    <p>
                        <label>Type of Heating
                            <select id="property_heating_type" name="heating_type">
                                <option value="" selected="selected">Select One</option>
                                <option value="heating_type_electric" >Electric</option>
                                <option value="heating_type_oil" >Oil</option>
                                <option value="heating_type_wood" >Wood</option>
                                <option value="heating_type_gas" >Gas</option>
                                <option value="heating_type_other" >Other</option>
                            </select>
                        </label>
                    </p>

                    <p>
                        <label>Type of Dwelling
                            <select id="property_dwelling_type" name="dwelling_type">
                                <option value="" selected="selected">Select One</option>
                                <option value="dwelling_type_single" >Single-dwelling</option>
                                <option value="dwelling_type_apartment" >Apartment</option>
                                <option value="dwelling_type_bungalow" >Bungalow</option>
                                <option value="dwelling_type_semi_attached" >Semi-attached</option>
                            </select>
                        </label>
                    </p>
                    </fieldset>

                    <fieldset>
                        <legend>Auto Details</legend>

                    <p>
                        <label>Vehicle Value
                            <input type="number" name="auto_value" id="vehicleValue" >
                        </label>
                    </p>

                    <p>
                        <label>Driver Age (Years)
                            <input type="number" name="auto_driver_age" id="driverAge">
                        </label>
                    </p>

                    <p>
                        <label>Vehicle Age (Years)
                            <input type="number" name="auto_age_years" id="vehicleAge">
                        </label>
                    </p>

                    <p>
                        <label>Number of Accidents (Past 5 Years)
                            <input type="number" name="auto_accident_count" id="autoAccidentCount">
                        </label>
                    </p>
                    </fieldset>


                    <fieldset>
                        <legend>Other Details</legend>

                    <p>
                        <label>Comments
                            <textarea name="comments" maxlength="500"></textarea>
                        </label>
                    </p>

                    <p><label> <input type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                    <p><button><a href="quote_generated.jsp">Generate Quote</a></button></p>
                    </fieldset>

                    <%--TODO: on generated quote screen, add an "Email me this quote" button
                            (no functionality, just a success message)--%>

                    <%--TODO: Improve look and field of this form
                            (fields and labels should be vertically aligned and equally spaced)--%>

                </form>
            </div>
        </div>
    </div>
<script>
    function premiumCalculation(){
        var numberOfAccidents = document.getElementById("autoAccidentCount").value;
        var age = document.getElementById("driverAge").value;
        var vehicleAge = document.getElementById("vehicleAge").value;
        var carValue= document.getElementById("vehicleValue").value;
    }
</script>
</body>
<%@include file='footer.jsp'%>
</html>
