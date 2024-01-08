<html>

<head>

<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

</head>

<body>

	<div class="container mt-3">
		<div class="row-md-12">
			<h1 class="text-center">Welcome to Product Website</h1>

			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Product Naame</th>
						<th scope="col">Description</th>
						<th scope="col">Price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ allProducts }" var="product">
						<tr>
							<th scope="row">${ product.id }</th>
							<td>${ product.name }</td>
							<td>${ product.description }</td>
							<td class="font-weight-bold">&#x20B9; ${ product.price }</td>
							<td><a href="deleteproduct/${ product.id }">
									<i class="fas fa-trash text-danger" style="font-size: 25px;"></i>
								</a>
								<a href="updateproduct/${ product.id }">
									<i class="fas fa-pen-nib" style="font-size: 25px;"></i>
								</a>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<div class="container text-center">
				<a href="addproduct" class="btn btn-outline-success">Add Product</a>
			</div>

		</div>
	</div>

</body>
</html>
