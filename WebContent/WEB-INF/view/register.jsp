<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>CRM - Register</title>
		<link href="${pageContext.request.contextPath}/resources/assets/css/material-kit.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link href="${pageContext.request.contextPath}/resources/css/app.css" rel="stylesheet" />
	</head>
	<body>
	
	
			<div class="container">
			<div class="card bg-info">
    			<div class="card-body">
        			<h5 class="card-category card-category-social"></h5>
        			<h4 class="card-title text-center">CRM - Customer Relationship Manager</h4>
        			<div class="card-stats"></div>
    			</div>
			</div>
		</div>
		<div class="container">
		<div class="row">
  			<div class="col-md-6">
    			<div class="card">
      				<div class="card-header">
        				<h4 class="card-title text-center">Register</h4>
      				</div>
      				<div class="card-body">
      					<form:form action="register" modelAttribute="customer" method="POST">
							<div class="form-group">
								<form:input path="firstName" class="form-control" placeholder="First Name"/>
							</div>
							<div class="form-group">
								<form:input path="middleName" class="form-control" placeholder="Middle Name"/>
							</div>
							<div class="form-group">
								<form:input path="lastName" class="form-control" placeholder="Last Name"/>
							</div>
							<div class="form-group">
								<form:input path="email" class="form-control" placeholder="Email"/>
							</div>
							<div class="form-group">
								<form:input type="password" path="password" class="form-control" placeholder="Password"/>
							</div>
							<input type="submit" class="btn btn-success btn-lg btn-round btn-raised" value="Register">
						</form:form>			
      				</div>
    			</div>
  			</div>
			</div>
			
			<div style="clear; both;"></div>
			<p>
				<a href="${pageContext.request.contextPath}/customer/list" class="btn btn-info btn-lg btn-round btn-raised">Back to List</a>
			</p>
		</div>
	
	
	
		<script src="${pageContext.request.contextPath}/resources/assets/js/core/jquery.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/core/popper.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/bootstrap-tagsinput.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/bootstrap-selectpicker.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins/jasny-bootstrap.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/material-kit.js" type="text/javascript"></script>
	</body>
</html>