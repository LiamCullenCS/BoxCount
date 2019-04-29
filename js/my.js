$(function(){
  $("#sel").on('change', function(){
    $("#imageToSwap﻿").attr("src", $(this).find(":selected").attr("data-src"));
  });
});	