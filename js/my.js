$(document).ready(function() {

    $("#sel").live("change", function() {
        if ($("#state").val() == "noImage") {    
            $("#swap").append(
                "<img id='swapImg' src='" + $(this).val() + "'>"
            );
            $("#state").val('image')
        } else {
           $("#swapImg").attr("src", $(this).val());
        }
    });

});