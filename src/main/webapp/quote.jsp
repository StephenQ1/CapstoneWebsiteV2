<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Get a Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteDiv">
            <div id="quoteBlurb">
                <h1>Generate Your Quote!</h1>
                <p>Using our patented and secure technology, you can now a generate a quote online!</p>
                <p>To get your quote, please complete the form below and click Submit.</p>
                <p>Our system will calculate your personalized quote using our most up-to-date rates.</p>
            </div>

            <div id="quoteForm">
                <form method="post" enctype="application/x-www-form-urlencoded" action="helloServlet"  onsubmit="premiumCalculation()" >

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
                            <label>Street Number
                                <input type="text" name="street_number" id="streetNum" required>
                            </label>
                        </p>
                        <p>
                            <label>City
                                <input type="text" name="city" id="user_city" required>
                            </label>
                        </p>
                        <p>
                            <label>State/Province (Initials)
                                <input maxlength="2" type="text" name="province" id="state_province" required>
                            </label>
                        </p>
                        <p>
                            <label>Country
                                <input type="text" name="country" id="user_country" required>
                            </label>
                        </p>
                        <p>
                            <label>Postal Code
                                <input type="text" name="postal_code" id="postCode" required>
                            </label>
                        </p>
                        <p>
                        <p>
                            <label>Property Location
                                <select id="property_location" name="location" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="Dense Urban" >Dense Urban</option>
                                    <option value="Urban" >Urban</option>
                                    <option value="Rural" >Rural</option>
                                </select>
                            </label>
                        </p>
                        <label>Property Age (Years)
                            <input type="number" name="property_age" id="propertyAge" required>
                        </label>
                        </p>

                        <p>
                            <label>Type of Heating
                                <select id="property_heating_type" name="heating_type" required>
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
                            <label>Vehicle Make
                                <input type="text" name="auto_make" id="make" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Model
                                <input type="text" name="auto_model" id="model" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Year
                                <input type="number" min="1950" max="2022" name="auto_age_years" id="vehicleAge" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Identification Number
                                <input type="text" name="auto_VIN" id="vin" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Color
                                <input type="text" name="auto_color" id="color" required>
                            </label>
                        </p>

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
                            <label>Number of Accidents (Past 5 Years)
                                <input type="number" name="auto_accident_count" id="autoAccidentCount" required>
                            </label>
                        </p>
                    </fieldset>


                    <fieldset>
                        <legend>Other Details</legend>

                        <p>
                            <label>Comments
                                <textarea name="comments" maxlength="500" id="commentBox"></textarea>
                            </label>
                        </p>

                        <p align="center"><label id="subscription"> <input  type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                        <p><input align="center" type="submit" value="Generate Quote" style="width: 150px;height: 50px;" id="generateQuote"  ></p>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>
</div>
<script>
    function premiumCalculation(){

        let numberOfAccidents = document.getElementById("autoAccidentCount").value;
        let driverAge = document.getElementById("driverAge").value;
        let propertyAge = document.getElementById("propertyAge").value;
        let propertyHeatingType = document.getElementById("property_heating_type").value;
        let carBasePremium = 750.0;
        let propertyBasePremium = 500.0
        let carAgeFactor = 0;
        let propertyAgeFactor = 1.0;
        let propertyHeatingFactor = 0;
        let accidentFactor = 1;

        if (propertyAge <25){
            propertyAgeFactor = 1.0
        }
        else if ((propertyAge > 25) && (propertyAge <50)){
            propertyAgeFactor = 1.25
        }
        else if (propertyAge > 50){
            propertyAgeFactor = 1.50;
        }

        switch (propertyHeatingType) {
            case "heating_type_electric":
                propertyHeatingFactor = 1.0;
                break;
            case "heating_type_oil":
                propertyHeatingFactor = 2.0;
                break;
            case "heating_type_wood":
                propertyHeatingFactor = 1.25;
                break;
            case "heating_type_gas":
                propertyHeatingFactor = 1.00;
                break;
            case "heating_type_other":
                propertyHeatingFactor = 1.00;
                break;
        }

        if (driverAge <25){
            carAgeFactor=2;
        } else if (driverAge >25) {
            carAgeFactor=1;
        }

        if (numberOfAccidents == 0){
            accidentFactor = 1;
        }
        else if (numberOfAccidents == 1){
            accidentFactor = 1.25;
        }
        else if (numberOfAccidents > 1){
            accidentFactor = 2.50;
        }

        document.getElementById("commentBox").value = propertyBasePremium * propertyAgeFactor * propertyHeatingFactor;
        document.getElementById("autoAccidentCount").value = carBasePremium * carAgeFactor * accidentFactor;

    }
</script>

</body>
<%@include file='footer.jsp'%>
</html>





<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Get a Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
<div class="pageContent">
    <div class="contentContainer">
        <div id="quoteDiv">
            <div id="quoteBlurb">
                <h1>Generate Your Quote!</h1>
                <p>Using our patented and secure technology, you can now a generate a quote online!</p>
                <p>To get your quote, please complete the form below and click Submit.</p>
                <p>Our system will calculate your personalized quote using our most up-to-date rates.</p>
            </div>

            <div id="quoteForm">
                <form method="post" enctype="application/x-www-form-urlencoded" action="helloServlet"  onsubmit="premiumCalculation()" >

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
                            <label>Street Number
                                <input type="text" name="street_number" id="streetNum" required>
                            </label>
                        </p>
                        <p>
                            <label>City
                                <input type="text" name="city" id="user_city" required>
                            </label>
                        </p>
                        <p>
                            <label>State/Province (Initials)
                                <input maxlength="2" type="text" name="province" id="state_province" required>
                            </label>
                        </p>
                        <p>
                            <label>Country
                                <input type="text" name="country" id="user_country" required>
                            </label>
                        </p>
                        <p>
                            <label>Postal Code
                                <input type="text" name="postal_code" id="postCode" required>
                            </label>
                        </p>
                        <p>
                        <p>
                            <label>Property Location
                                <select id="property_location" name="location" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="Dense Urban" >Dense Urban</option>
                                    <option value="Urban" >Urban</option>
                                    <option value="Rural" >Rural</option>
                                </select>
                            </label>
                        </p>
                        <label>Property Age (Years)
                            <input type="number" name="property_age" id="propertyAge" required>
                        </label>
                        </p>

                        <p>
                            <label>Type of Heating
                                <select id="property_heating_type" name="heating_type" required>
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
                            <label>Vehicle Make
                                <input type="text" name="auto_make" id="make" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Model
                                <input type="text" name="auto_model" id="model" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Year
                                <input type="number" min="1950" max="2022" name="auto_age_years" id="vehicleAge" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Identification Number
                                <input type="text" name="auto_VIN" id="vin" required>
                            </label>
                        </p>
                        <p>
                            <label>Vehicle Color
                                <input type="text" name="auto_color" id="color" required>
                            </label>
                        </p>

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
                            <label>Number of Accidents (Past 5 Years)
                                <input type="number" name="auto_accident_count" id="autoAccidentCount" required>
                            </label>
                        </p>
                    </fieldset>


                    <fieldset>
                        <legend>Other Details</legend>

                        <p>
                            <label>Comments
                                <textarea name="comments" maxlength="500" id="commentBox"></textarea>
                            </label>
                        </p>

                        <p align="center"><label id="subscription"> <input  type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                        <p><input align="center" type="submit" value="Generate Quote" style="width: 150px;height: 50px;" id="generateQuote"  ></p>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>
</div>
<script>
    function premiumCalculation(){

        let numberOfAccidents = document.getElementById("autoAccidentCount").value;
        let driverAge = document.getElementById("driverAge").value;
        let propertyAge = document.getElementById("propertyAge").value;
        let propertyHeatingType = document.getElementById("property_heating_type").value;
        let carBasePremium = 750.0;
        let propertyBasePremium = 500.0
        let carAgeFactor = 0;
        let propertyAgeFactor = 1.0;
        let propertyHeatingFactor = 0;
        let accidentFactor = 1;

        if (propertyAge <25){
            propertyAgeFactor = 1.0
        }
        else if ((propertyAge > 25) && (propertyAge <50)){
            propertyAgeFactor = 1.25
        }
        else if (propertyAge > 50){
            propertyAgeFactor = 1.50;
        }

        switch (propertyHeatingType) {
            case "heating_type_electric":
                propertyHeatingFactor = 1.0;
                break;
            case "heating_type_oil":
                propertyHeatingFactor = 2.0;
                break;
            case "heating_type_wood":
                propertyHeatingFactor = 1.25;
                break;
            case "heating_type_gas":
                propertyHeatingFactor = 1.00;
                break;
            case "heating_type_other":
                propertyHeatingFactor = 1.00;
                break;
        }

        if (driverAge <25){
            carAgeFactor=2;
        } else if (driverAge >25) {
            carAgeFactor=1;
        }

        if (numberOfAccidents == 0){
            accidentFactor = 1;
        }
        else if (numberOfAccidents == 1){
            accidentFactor = 1.25;
        }
        else if (numberOfAccidents > 1){
            accidentFactor = 2.50;
        }

        document.getElementById("commentBox").value = propertyBasePremium * propertyAgeFactor * propertyHeatingFactor;
        document.getElementById("autoAccidentCount").value = carBasePremium * carAgeFactor * accidentFactor;

    }
</script>

</body>
<%@include file='footer.jsp'%>
</html>


&lt;%&ndash;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Get a Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
            <div id="quoteDiv">
                <div id="quoteBlurb">
                    <h1>Generate Your Quote!</h1>
                    <p>Using our patented and secure technology, you can now a generate a quote online!</p>
                    <p>To get your quote, please complete the form below and click Submit.</p>
                    <p>Our system will calculate your personalized quote using our most up-to-date rates.</p>
                </div>

                <div id="quoteForm">
                    <form method="post" enctype="application/x-www-form-urlencoded" action="helloServlet"  onsubmit="premiumCalculation()" >

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
                                    <select id="property_location" name="location" required>
                                        <option value="" selected="selected">Select One</option>
                                        <option value="Dense Urban" >Dense Urban</option>
                                        <option value="Urban" >Urban</option>
                                        <option value="Rural" >Rural</option>
                                    </select>
                                </label>
                            </p>
                            <label>Property Age (Years)
                                <input type="number" name="property_age" id="propertyAge" required>
                            </label>
                        </p>

                        <p>
                            <label>Type of Heating
                                <select id="property_heating_type" name="heating_type" required>
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
                                <textarea name="comments" maxlength="500" id="commentBox"></textarea>
                            </label>
                        </p>

                        <p>
                            <label>Query
                                <textarea name="query" maxlength="500" id="queryString"></textarea>
                            </label>
                        </p>



                   <p align="center"><label id="subscription"> <input  type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                            <p><input align="center" type="submit" value="Generate Quote" style="width: 150px;height: 50px;" id="generateQuote"  ></p>
                        </fieldset>
                    </form>
                </div>
            </div>

        </div>
    </div>
    <script>
        function premiumCalculation(){

            let numberOfAccidents = document.getElementById("autoAccidentCount").value;
            let driverAge = document.getElementById("driverAge").value;
            let propertyAge = document.getElementById("propertyAge").value;
            let propertyHeatingType = document.getElementById("property_heating_type").value;
            let carBasePremium = 750.0;
            let propertyBasePremium = 500.0
            let carAgeFactor = 0;
            let propertyAgeFactor = 1.0;
            let propertyHeatingFactor = 0;
            let accidentFactor = 1;

            if (propertyAge <25){
                propertyAgeFactor = 1.0
            }
            else if ((propertyAge > 25) && (propertyAge <50)){
                propertyAgeFactor = 1.25
            }
            else if (propertyAge > 50){
                propertyAgeFactor = 1.50;
            }

            switch (propertyHeatingType) {
                case "heating_type_electric":
                    propertyHeatingFactor = 1.0;
                    break;
                case "heating_type_oil":
                    propertyHeatingFactor = 2.0;
                    break;
                case "heating_type_wood":
                    propertyHeatingFactor = 1.25;
                    break;
                case "heating_type_gas":
                    propertyHeatingFactor = 1.00;
                    break;
                case "heating_type_other":
                    propertyHeatingFactor = 1.00;
                    break;
            }

            if (driverAge <25){
                carAgeFactor=2;
            } else if (driverAge >25) {
                carAgeFactor=1;
            }

            if (numberOfAccidents == 0){
                accidentFactor = 1;
            }
            else if (numberOfAccidents == 1){
                accidentFactor = 1.25;
            }
            else if (numberOfAccidents > 1){
                accidentFactor = 2.50;
            }

            document.getElementById("vehicleAge").value = propertyBasePremium * propertyAgeFactor * propertyHeatingFactor;
            document.getElementById("autoAccidentCount").value = carBasePremium * carAgeFactor * accidentFactor;

        }
    </script>

</body>
<%@include file='footer.jsp'%>
</html>
&ndash;%&gt;



&lt;%&ndash;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Taylor Insurance - Get a Quote</title>
<%@include file='head.jsp'%>
<%@include file='header.jsp'%>
<body id="wrapbot" class="backgroundImages" style="background-image: url('Photos/aboutBackground.jpg');">
    <div class="pageContent">
        <div class="contentContainer">
            <div id="quoteDiv">
                <div id="quoteBlurb">
                    <h1>Generate Your Quote!</h1>
                    <p>Using our patented and secure technology, you can now a generate a quote online!</p>
                    <p>To get your quote, please complete the form below and click Submit.</p>
                    <p>Our system will calculate your personalized quote using our most up-to-date rates.</p>
                </div>

                <div id="quoteForm">
                    <form method="post" enctype="application/x-www-form-urlencoded" action="helloServlet"  onsubmit="premiumCalculation()" >

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
                                <label>Street Number
                                    <input type="text" name="street_number" id="streetNum" required>
                                </label>
                            </p>
                            <p>
                                <label>City
                                    <input type="text" name="city" id="user_city" required>
                                </label>
                            </p>
                            <p>
                                <label>State/Province (Initials)
                                    <input maxlength="2" type="text" name="province" id="state_province" required>
                                </label>
                            </p>
                            <p>
                                <label>Country
                                    <input type="text" name="country" id="user_country" required>
                                </label>
                            </p>
                            <p>
                                <label>Postal Code
                                    <input type="text" name="postal_code" id="postCode" required>
                                </label>
                            </p>
                        <p>
                            <p>
                                <label>Property Location
                                    <select id="property_location" name="location" required>
                                        <option value="" selected="selected">Select One</option>
                                        <option value="Dense Urban" >Dense Urban</option>
                                        <option value="Urban" >Urban</option>
                                        <option value="Rural" >Rural</option>
                                    </select>
                                </label>
                            </p>
                            <label>Property Age (Years)
                                <input type="number" name="property_age" id="propertyAge" required>
                            </label>
                        </p>

                        <p>
                            <label>Type of Heating
                                <select id="property_heating_type" name="heating_type" required>
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
                                <label>Vehicle Make
                                    <input type="text" name="auto_make" id="make" required>
                                </label>
                            </p>
                            <p>
                                <label>Vehicle Model
                                    <input type="text" name="auto_model" id="model" required>
                                </label>
                            </p>
                            <p>
                                <label>Vehicle Year
                                    <input type="number" min="1950" max="2022" name="auto_age_years" id="vehicleAge" required>
                                </label>
                            </p>
                            <p>
                                <label>Vehicle Identification Number
                                    <input type="text" name="auto_VIN" id="vin" required>
                                </label>
                            </p>
                            <p>
                                <label>Vehicle Color
                                    <input type="text" name="auto_color" id="color" required>
                                </label>
                            </p>

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
                            <label>Number of Accidents (Past 5 Years)
                                <input type="number" name="auto_accident_count" id="autoAccidentCount" required>
                            </label>
                        </p>
                        </fieldset>


                        <fieldset>
                            <legend>Other Details</legend>

                        <p>
                            <label>Comments
                                <textarea name="comments" maxlength="500" id="commentBox"></textarea>
                            </label>
                        </p>

                   <p align="center"><label id="subscription"> <input  type="checkbox" name="newsletter" value="newsletter"> Subscribe to Our Newsletter </label></p>

                            <p><input align="center" type="submit" value="Generate Quote" style="width: 150px;height: 50px;" id="generateQuote"  ></p>
                        </fieldset>
                    </form>
                </div>
            </div>

        </div>
    </div>
    <script>
        function premiumCalculation(){

            let numberOfAccidents = document.getElementById("autoAccidentCount").value;
            let driverAge = document.getElementById("driverAge").value;
            let propertyAge = document.getElementById("propertyAge").value;
            let propertyHeatingType = document.getElementById("property_heating_type").value;
            let carBasePremium = 750.0;
            let propertyBasePremium = 500.0
            let carAgeFactor = 0;
            let propertyAgeFactor = 1.0;
            let propertyHeatingFactor = 0;
            let accidentFactor = 1;

            if (propertyAge <25){
                propertyAgeFactor = 1.0
            }
            else if ((propertyAge > 25) && (propertyAge <50)){
                propertyAgeFactor = 1.25
            }
            else if (propertyAge > 50){
                propertyAgeFactor = 1.50;
            }

            switch (propertyHeatingType) {
                case "heating_type_electric":
                    propertyHeatingFactor = 1.0;
                    break;
                case "heating_type_oil":
                    propertyHeatingFactor = 2.0;
                    break;
                case "heating_type_wood":
                    propertyHeatingFactor = 1.25;
                    break;
                case "heating_type_gas":
                    propertyHeatingFactor = 1.00;
                    break;
                case "heating_type_other":
                    propertyHeatingFactor = 1.00;
                    break;
            }

            if (driverAge <25){
                carAgeFactor=2;
            } else if (driverAge >25) {
                carAgeFactor=1;
            }

            if (numberOfAccidents == 0){
                accidentFactor = 1;
            }
            else if (numberOfAccidents == 1){
                accidentFactor = 1.25;
            }
            else if (numberOfAccidents > 1){
                accidentFactor = 2.50;
            }

            document.getElementById("vehicleAge").value = propertyBasePremium * propertyAgeFactor * propertyHeatingFactor;
            document.getElementById("autoAccidentCount").value = carBasePremium * carAgeFactor * accidentFactor;

        }
    </script>

</body>
<%@include file='footer.jsp'%>
</html>
&ndash;%&gt;
--%>
