$(function () {
    $(document).ready(function () {
        var url = window.location;

        var i = $('ul.nav a').filter(function () {
            return this.href == url;
        }).length;

        if (i == 1) {
            $('ul.nav a').filter(function () {
                return this.href == url;
            }).parent().addClass('active');
        } else {
            $('ul.nav li').first().addClass('active');
        }
    });

    $('.contact-form').submit(function (event) {
        event.preventDefault();
        
        var name = $("#inputName").val();  
        var building = $("#inputBuildingName").val(); 
        var buildingSz = $("#inputBuildingSize").val();
        var fromEmail = $("#inputEmAdr").val();
        var phone = $("#inputPhone").val();
        var myMessage = $("#inputMyMessage").val();

        building += " (" + buildingSz + ")";

        if (!fromEmail.trim() && !phone.trim()) {
            alert("Please include either an email address, a phone number (or both).");
        } else {
            var data = "{'name': '" + name +
            "', 'building': '" + building +
            "', 'phonenum': '" + phone +
            "', 'fromEmail': '" + fromEmail +
            "', 'myMessage': '" + myMessage + "'}";

            $.ajax({
                type: "POST",
                url: "/SendMessage.aspx/SendContactMessage",
                data: data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) { $("#id1").html(result); },
                failure: function () { $("#id1").html("failed."); }
            });

            $("#contactUs").hide(function () {
                $("#ThankYouMessage").show();
            });

        }
    });
});