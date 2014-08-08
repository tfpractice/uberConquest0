# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$(".fancybox").fancybox()

	$('#headerNav').scrollToFixed()
	odometer = $(".odometer")
	odometer.text(682682682)
	oValue = odometer.text()

	#setInterval ->
	#	increaseOdometer(1500)
	#	3000

	setInterval (-> increaseOdometer 1500), 3000
	

	increaseOdometer =(changeAmt) ->
		updatedValue = (parseInt(oValue) + changeAmt)
		console.log(updatedValue)
		odometer.text(updatedValue)

	


	

	
