// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){

	

	
	$('#next1').click(function(){
		$('#slide2').show();
		$('#slide1').hide();
	});
	
	
	$('#next2').click(function(){
		$('#slide3').show();
		$('#slide2').hide();
	});
	$('#prev2').click(function(){
		$('#slide1').show();
		$('#slide2').hide();
	});


	$('#prev3').click(function(){
		$('#slide2').show();
		$('#slide3').hide();
	});
	
});