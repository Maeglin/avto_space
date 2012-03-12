# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
//= require galleria-1.2.6.min
jQuery ->
	Galleria.loadTheme('/assets/galleria.classic.min.js');
	$('#galleria').galleria();