<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<%@include file="./base.jsp"%>

</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mv-3">Add Product</h1>

				<form action="handleproduct" method="post">
					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text" class="form-control" id="name" name="name"
							placeholder="Enter the name of product">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea rows="5" cols="" class="form-control" id="description"
							name="description" placeholder="Enter the description of product"></textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label>
						<input type="text" class="form-control" id="price" name="price" placeholder="Enter the price of product">
					</div>

					<div class="container text-center">
						<a href="${ pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>

				</form>

			</div>
		</div>
	</div>

</body>
</html>