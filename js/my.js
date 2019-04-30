$(document).ready(function() {
    $("#sel").change(function() {
        if ($(this).val() === "SEA") {
        $("#swap").attr("src", "IMG/PlayDistributions/SEA.png");
        } 
		else if ($(this).val() === "ARI") {
        $("#swap").attr("src", "IMG/PlayDistributions/ARI.png");
        }
		else if ($(this).val() === "LAR") {
        $("#swap").attr("src", "IMG/PlayDistributions/LAR.png");
        } 
		else if ($(this).val() === "SF") {
        $("#swap").attr("src", "IMG/PlayDistributions/SF.png");
        } 
    });
});