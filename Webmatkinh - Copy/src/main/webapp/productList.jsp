<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product List</title>
   
    <style>
        /* Custom styles here */
    </style>
</head>
<body>
    <div class="container">
        <h3>Bộ Sưu Tập</h3>
        <p style="color: red;">${errorString}</p>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${productList}" var="product">
                    <tr>
                        <td>${product.productID}</td>
                        <td>${product.productName}</td>
                        <td>${product.productType}</td>
                        <td>${product.productPrice}</td>
                        <td><img src="${product.productImg}" height="20px" width="20px" /></td>
                        <td><a href="editProductServlet?ID=${product.productID}" class="btn btn-primary">Edit</a></td>
                        <td><a href="confirmDelete?ID=${product.productID}" class="btn btn-danger">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="newProduct.jsp" class="btn btn-success">Create Product</a>
    </div>
    
</body>
</html>
