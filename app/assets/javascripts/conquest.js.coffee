# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(".fancybox").fancybox()

	$('#headerNav').scrollToFixed()
	odometer = $(".odometer")
	oValue = odometer.text()
	odometer.text("682682682")
	odometer.click ->
#		oValue = odometer.text()
		updatedValue = (oValue + 15000)
		console.log
		odometer.text(updatedValue)
