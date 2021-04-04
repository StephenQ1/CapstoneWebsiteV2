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
                <form method="get" enctype="application/x-www-form-urlencoded" action="quote_generated.jsp">

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
                            <input type="tel" name="phone_mobile" required>
                        </label>
                    </p>

                    <p>
                        <label>Email Address
                            <input type="email" name="email_address" required>
                        </label>
                    </p>
                    </fieldset>

                    <fieldset>
                        <legend>Property Details</legend>

                    <p>
                        <p>
                            <label>Property Location
                                <select id="property_location" name="location">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="property_location_urbanD" >Dense Urban</option>
                                    <option value="property_location_urban" >Urban</option>
                                    <option value="property_location_rural" >Rural</option>
                                </select>
                            </label>
                        </p>
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
                            <select id="property_dwelling_type" name="dwelling_type" >
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
                            <input type="number" name="auto_driver_age" id="driverAge" required>
                        </label>
                    </p>

                    <p>
                        <label>Vehicle Age (Years)
                            <input type="number" name="auto_age_years" id="vehicleAge" required>
                        </label>
                    </p>

                    <p>
                        <label>Number of Accidents (Past 5 Years)
                            <input type="number" name="auto_accident_count" id="autoAccidentCount" required>
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

                    <p align="center"><label id="subscription"> <input  type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                        <p><input align="center" type="submit" value="Generate Quote" style="width: 150px;height: 50px;" id="generateQuote"  ></p>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
<%--    <script>--%>
<%--        $("generateQuote").onsubmit = function{--%>
<%--            location.href = "quote_generated.jsp"--%>
<%--        }--%>
<%--    </script>--%>
    <script>
        function premiumCalculation(){
            let numberOfAccidents = document.getElementById("autoAccidentCount").value;
            let age = document.getElementById("driverAge").value;
            let basePremium = 950;
            let ageFactor, accidentFactor;
            if (age <25){
                ageFactor=2;
            }
            else if (age > 25){
                ageFactor=1;
            }
            if (numberOfAccidents = 0){
                accidentFactor = 0
            }
            else if (numberOfAccidents = 1){
                accidentFactor = 1.25
            }
            else if (numberOfAccidents > 2){
                accidentFactor = 2.50
            }
            let calculation = (basePremium * ageFactor)*accidentFactor;
            alert(calculation)
        }
    </script>
</body>
<%@include file='footer.jsp'%>
</html>
