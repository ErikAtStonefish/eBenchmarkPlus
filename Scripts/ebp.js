﻿$(function () {
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

    $('.contact-form').submit(function () {
        var name = document.getElementById("inputName").value;
        var fromEmail = document.getElementById("inputEmAdr").value;
        var myMessage = document.getElementById("inputMyMessage").value;
        var data = "{'name': '" + name + "', 'fromEmail': '" + fromEmail + "', 'myMessage': '" + myMessage + "'}";

        $.ajax({
            type: "POST",
            url: "/SendMessage.aspx/SendContactMessage",
            data: data,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) { $("#id1").html(result); },
            failure: function () {$("#id1").html("failed.");}
        });

    });
});