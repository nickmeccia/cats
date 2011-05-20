// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){

	$('#gallery').hide();
	
	$('#to_gallery').click(function(){
		$('#gallery').show("slide", { direction: "right" }, 1000);
		$('#cat').hide("slide", { direction: "left" }, 1000);
	});

	$('#to_cat').click(function(){
		$('#cat').show("slide", { direction: "right" }, 1000);
		$('#gallery').hide("slide", { direction: "left" }, 1000);
	});





	$('#slide2').hide();
	$('#slide3').hide();
	
	
	$('#next1').click(function(){
		$('#slide2').show("slide", { direction: "right" }, 1000);
		$('#slide1').hide("slide", { direction: "left" }, 1000);
	});
	
	
	$('#next2').click(function(){
		$('#slide3').show("slide", { direction: "right" }, 1000);
		$('#slide2').hide("slide", { direction: "left" }, 1000);
	});
	$('#prev2').click(function(){
		$('#slide1').show("slide", { direction: "left" }, 1000);
		$('#slide2').hide("slide", { direction: "right" }, 1000);
	});


	$('#prev3').click(function(){
		$('#slide2').show("slide", { direction: "left" }, 1000);
		$('#slide3').hide("slide", { direction: "right" }, 1000);
	});
	
});