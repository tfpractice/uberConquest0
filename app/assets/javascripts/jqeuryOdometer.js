 $( document ).ready(function() {

 	 var odometer = $(".odometer");
		//odometer.text(682682682);
	 var oValue = odometer.text();



 function increaseOdometer(target, changeAmt){

 		var updatedValue = (parseInt(oValue) + changeAmt);
 		var targetValue = (parseInt(target) + changeAmt);

 		console.log(updatedValue);
 		odometer.text((parseInt(target) + changeAmt));

 	}

 	setInterval(function(){increaseOdometer(oValue, 1500)} ,1000);


 });