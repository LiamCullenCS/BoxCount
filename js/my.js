$(document).ready(function() {

    $("#sel").live("change", function() {
        if ($("#state").value() == "noImage") {    
            $("#swap").append(
                "<img id='swapImg' src='" + $(this).value() + "'>"
            );
            $("#state").value('image')
        } else {
           $("#swapImg").attr("src", $(this).value());
        }
    });

});