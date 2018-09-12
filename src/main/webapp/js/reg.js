$(document).ready(function() {
	
	$('#empEmail').on('keypress',function() {

		

	});
	
});

$(document).ready(function() {
	$("#empPhone").keydown(function (e) {
		// Allow: backspace, delete, tab, escape, enter and .
		if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110]) !== -1 ||
				// Allow: Ctrl+A, Command+A
				(e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
				// Allow: home, end, left, right, down, up
				(e.keyCode >= 35 && e.keyCode <= 40)) {
             	// let it happen, don't do anything
             return;
		}
		// Ensure that it is a number and stop the keypress
		if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
			e.preventDefault();
		}
	});
});

$(document).ready(function() {
	  $('#empFName').keydown(function(e) {
		      
		  if (e.shiftKey || e.ctrlKey || e.altKey) {
			  e.preventDefault();
		  } else {
	      var key = e.keyCode;
	      if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
	        e.preventDefault();
	      }
	    }
	  });
});


$(document).ready(function() {
	  $('#empFName').keyup(function(){
		  	this.value = this.value.toUpperCase();
	  });
});
$(document).ready(function() {
	  $('#empLName').keyup(function(){
		  	this.value = this.value.toUpperCase();
	  });
});
$(document).ready(function() {
	  $('#empEmail1').keyup(function(){
		  	this.value = this.value.toLowerCase();
	  });
});

$(document).ready(function() {
	  $('#empLName').keydown(function(e) {
	    
		  if (e.shiftKey || e.ctrlKey || e.altKey) {
			  e.preventDefault();
		  } else {
	      var key = e.keyCode;
	      if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
	        e.preventDefault();
	      }
	    }
	  });
});

$(document).ready(function(){
	
	$("#empEmail1").keypress( function() {
	
		var re = /([A-Z0-9a-z_-][^@])+?@[^$#<>?]+?\.[\w]{2,4}/.test(this.value);
		if(!re) {
			$('#error1').show();
		} else {
		    $('#error1').hide();
		}
		
	});
	
});
