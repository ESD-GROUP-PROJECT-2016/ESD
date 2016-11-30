<%-- 
    Document   : Register
    Created on : 30-Nov-2016, 00:14:16
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        var placeSearch, autocomplete;
        var componentForm = {
            street_number: 'short_name',
            route: 'long_name',
            locality: 'long_name',
            administrative_area_level_1: 'short_name',
            country: 'long_name',
            postal_code: 'short_name'
        };

        function initAutocomplete() {
            // Create the autocomplete object, restricting the search to geographical
            // location types.
            autocomplete = new google.maps.places.Autocomplete(
                    /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
                    {types: ['geocode']});

            // When the user selects an address from the dropdown, populate the address
            // fields in the form.
            autocomplete.addListener('place_changed', fillInAddress);
        }

        function fillInAddress() {
            // Get the place details from the autocomplete object.
            var place = autocomplete.getPlace();

            for (var component in componentForm) {
                document.getElementById(component).value = '';
                document.getElementById(component).disabled = false;
            }

            // Get each component of the address from the place details
            // and fill the corresponding field on the form.
            for (var i = 0; i < place.address_components.length; i++) {
                var addressType = place.address_components[i].types[0];
                if (componentForm[addressType]) {
                    var val = place.address_components[i][componentForm[addressType]];
                    document.getElementById(addressType).value = val;
                }
            }
        }

        // Bias the autocomplete object to the user's geographical location,
        // as supplied by the browser's 'navigator.geolocation' object.
        function geolocate() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var geolocation = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    var circle = new google.maps.Circle({
                        center: geolocation,
                        radius: position.coords.accuracy
                    });
                    autocomplete.setBounds(circle.getBounds());
                });
            }
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMWQ06ddBhwqMXeY0OaJHEnsL4EFQSzWU&libraries=places&callback=initAutocomplete"
    async defer></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <style>
        h1{
            color:dodgerblue;
            text-align:center;
            font-family:calibri;
            font-size:300%;
        }
        h2{
            color:lightgray;
            text-align:center;
            font-family:calibri;
            font-size:150%;
        }
        p1{
            color:black;
            text-align:center;
            font-family:calibri;
            font-size:100%   
        }              
    </style>
    <h1>XYZ Drivers Association</h1>
    <h2>Please enter your details to register...</h2>
    <body>
        <table align="center" id="address">
            <tr>
                <td class="">First Name:</label></td>
                <td><input id="firstname" type="text" name="firstname"></td>
            </tr>
            <tr>
                <td class="">Last Name:</label></td>
                <td><input id="surname" type="text" name="surname"></td>
            </tr>
            <tr>
                <td class="">Date of Birth:</label></td>
                <td><input id="dob" type="date" name="dob"></td>
            </tr>
            <tr>
                <td class="">Address:</label></td>
                <td class="field" id="locationField">
                    <input id="autocomplete" placeholder="Enter your address"
                           onFocus="geolocate()" type="text"></input></td></td>
            </tr>
            <tr>
                <td class="label">Street address</td>
                <td class="slimField"><input class="field" id="street_number"
                                             disabled="true"></input></td>
                <td class="wideField" colspan="2"><input class="field" id="route"
                                                         disabled="true"></input></td>
            </tr>
            <tr>
                <td class="label">City</td>
                <td class="wideField" colspan="3"><input class="field" id="locality"
                                                         disabled="true"></input></td>
            </tr>
            <tr>
                <td class="label">State</td>
                <td class="slimField"><input class="field"
                                             id="administrative_area_level_1" disabled="true"></input></td>
            </tr>
            <tr>
                <td class="label">Country</td>
                <td class="wideField" colspan="3"><input class="field"
                                                         id="country" disabled="true"></input></td>
            </tr>
            <tr>
                <td class="label">Post Code</td>
                <td class="wideField"><input class="field" id="postal_code"
                                             disabled="true"></input></td>
            </tr>
            <form action="NewUser.do" method="post"name="frmAddCustomer"> 
                <!--onsubmit="return validateuser1()">-->
                <table align="center" width="500" border="0" cellspacing="3">             
                    </div>
                    <tr>
                        <td><td><input type="submit" name="Submit" value="Submit" ></td></td>
                    </tr>
                </table>    
            </form>
    </body>
</html>
