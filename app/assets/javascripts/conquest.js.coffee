# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(".fancybox").fancybox()

	odometer = $(".odometer")
	oValue = odometer.html
	oValue = 682682682
	odometer.click ->
		updatedValue = oValue + 15000
		odometer.html(updatedValue)
