<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="/webjars/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/default.css"
	rel="stylesheet" />

<link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>

<script src="/webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
<link href="/webjars/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/js/ajaxcall.js"></script>
<script src="${pageContext.request.contextPath}/js/reg.js"></script>

</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModalCenter">
		<i class="fa fa-sign-in"></i>&nbsp;Login
	</button>
	&nbsp;
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">
		<i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;sign up
	</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Employee
						Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="exampleInputEmail1" class="text-success"><i
							class="fa fa-envelope fa-1x" aria-hidden="true"> </i>&nbsp;&nbsp;<strong>Email
								address</strong></label> <input type="email" class="form-control" id="empEmail"
							aria-describedby="emailHelp" placeholder="Enter email"> <span
							id="error" style="display: none; color: red;">Enter Valid
							Email</span>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" class="text-info"><i
							class="fa fa-key fa-1x" aria-hidden="true"> </i>&nbsp;&nbsp;<strong>Password</strong></label>
						<input type="password" class="form-control" id="empPwd"
							placeholder="Password">
					</div>
					<div class="form-group ">
						<div id="loading" class=" text-success"></div>
					</div>

					<div class="form-group ">
						<div id="msg" class="text-danger"></div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button id="loadData" class="btn btn-primary">Submit</button>
				</div>
			</div>

		</div>
	</div>

	<!-- Employee Register -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Employee
						Register</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<div class="form-row">


						<div class="form-group col-md-6">
							<label for="empFName">First Name</label> <input type="text"
								class="form-control" id="empFName" placeholder="First Name">
						</div>
						<div class="form-group col-md-6">
							<label for="empLName">Last Name</label> <input type="text"
								class="form-control" id="empLName" placeholder="Last Name">
						</div>
						<div class="form-group col-md-12">
							<label for="empEmail1"></label> <input type="email" class="form-control" id="empEmail1"
							aria-describedby="emailHelp" placeholder="Enter email"> <span
							id="error1" style="display: none; color: red;">Enter Valid
							Email</span>
						</div>
						<div class="form-group col-md-12">
							<label for="empPhone">Contact Number</label> <input type="text" maxlength='10' 
								class="form-control" id="empPhone" placeholder="Contact Number">
						</div>
						<div class="form-group col-md-6">
							<label for="empPassword">Password</label> <input
								type="password" class="form-control" id="empPassword"
								placeholder="Password">
						</div>
						<div class="form-group col-md-6">
							<label for="CPassword">Confrim Password</label> <input
								type="password" class="form-control" id="CPassword"
								placeholder="Password">
						</div>
						<div id="error"></div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="empState">State</label> <select id="empState"
								class="form-control">
								<option selected>Choose...</option>
								<option>MCA ...</option>
								<option>MBA ...</option>
								<option>MCA3 ...</option>
							</select>
						</div>
						<div class="form-group col-md-5">
							<label for="empCity">City</label> <input type="text"
								class="form-control" id="inputCity">
						</div>
						<div class="form-group col-md-3">
							<label for="iempZip">Zip</label> <input type="text"
								class="form-control" id="empZip">
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck">
							<label class="form-check-label" for="gridCheck"> Check me
								out </label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Register</button>
				</div>
			</div>
		</div>
	</div>

<!-- Lodaing start -->

<!-- Modal -->
<div class="modal fade" id="LoadingImg" tabindex="-1" role="dialog" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
    </div>
  </div>
</div>
<!-- Lodaing end -->

</body>
</html>

