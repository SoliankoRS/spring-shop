<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Spring Shop</title>
</head>
<body>
<h1>Spring Shop</h1>
<h4>Product info</h4>
<b>Title: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.author}<br>
<hr>
<h3>Create new product</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>
</body>
</html>