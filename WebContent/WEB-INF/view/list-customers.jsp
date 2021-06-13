<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>CRM - Customer List</title>
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
			<div class="col-12 col-md-10 offset-md-1">
			<div class="card">
			<div class="card-header shadow-lg bg-default">
				<a class="btn btn-lg btn-success btn-round shadow-lg" onclick="window.location.href='showFormForAdd'; return false;"><i class="fas fa-user-plus"></i></a>
			</div>
			<div class="card-body">
				<table class="table table-hover table-striped">
					<thead class="bg-info text-center">
						<tr>
							<th class="text-white">First Name</th>
							<th class="text-white">Last Name</th>
							<th class="text-white">Email</th>
							<th class="text-white">Action</th>
						</tr>
					</thead>
					<c:forEach var="tempCustomer" items="${customers}">
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomer.id}"/>
						</c:url>
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id}"/>
						</c:url>
						<tbody class="text-center">
							<tr>
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.lastName}</td>
								<td>${tempCustomer.email}</td>
								<td>
									<a href="${updateLink}" class="btn btn-sm btn-warning btn-raised btn-round"><i class="far fa-edit"></i></a> 
									<a href="${deleteLink}" class="btn btn-sm btn-danger btn-raised btn-round" onclick="if (!(confirm('Are you sure you want to delete this customer? '))) return false;"><i class="far fa-trash-alt"></i></a>
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				</div>
				</div>
				</div>
			</div>
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