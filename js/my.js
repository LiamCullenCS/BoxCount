$(document).ready(function() {
	$("#sel").change(function() {
		var imgUrl = $(this).val();
		$("#swapImg").attr("src", imgUrl);
	});
});