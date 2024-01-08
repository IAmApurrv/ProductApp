<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<%@include file="./base.jsp"%>

</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mv-3">Update Product</h1>

				<form action="${ pageContext.request.contextPath}/handleproduct" method="post">

					<div class="form-group">
						<%-- <label for="id">Product Id : ${ product.id }</label> --%>
						<input type="hidden" class="form-control" name="id"
							value="${ product.id }">
					</div>

					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text" class="form-control" id="name" name="name"
							placeholder="Enter the name of product" value="${ product.name }">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea rows="5" cols="" class="form-control" id="description"
							name="description" placeholder="Enter the description of product">${ product.description }</textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label>
						<input type="text" class="form-control" id="price" name="price"
							placeholder="Enter the price of product" value="${ product.price }">
					</div>

					<div class="container text-center">
						<a href="${ pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-success">Update</button>
					</div>

				</form>

			</div>
		</div>
	</div>

</body>
</html>