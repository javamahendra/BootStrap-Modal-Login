
	$(document).ready(function() {
		$("#loadData").click(function() {

			var email = $("#empEmail").val();
			var pwd = $("#empPwd").val();
			
			//$('#msg').hide();

			var delay = 2000;

			if ($("#empEmail").val() != "" && $("#empPwd").val() != "") {

				console.log("Email :" + email + ", pwd :" + pwd);
				var json = {

					'empEmail' : email,
					'empPwd' : pwd
				}

				$.ajax({
					url : 'home',
					data : json,
					type : "post",
					beforeSend : function() {

						$("#loading").append('<b>connecting... <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i></b>');
					},

					success : function(response) {
						setTimeout(function() {
							$("#loading").hide();
							if (response) {
								
								console.log("forward data page...")								
								window.location.href='data'
							} else {

								console.log("email or pwd incorrect...")								
								$("#msg").append('<b>email or pwd incorrect...</b>');
							}
						}, delay);
					},
					error : function(xhr, status, error) {
						alert(xhr.responseText);
					}
				});

				console.log("json data :" + json);

			} else {

				console.log("email and pwd required...");
			}

		});

	});

	$(document).ready(function(){
		
		$('#empEmail').on('keypress', function() {
		
			var re = /([A-Z0-9a-z_-][^@])+?@[^$#<>?]+?\.[\w]{2,4}/.test(this.value);
			if(!re) {
				$('#error').show();
			} else {
			    $('#error').hide();
			}
			
		});
		$('#empPwd').click(function() {
			
			//s$('#msg').hide();			
		});
 
	});

