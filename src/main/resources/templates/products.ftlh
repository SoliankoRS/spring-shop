<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Spring Shop</title>
</head>
<body>
<h1>Spring Shop</h1>
<h4>All products</h4>
<hr>
<#list products as product>
    <div>
        <p><b>${product.title} </b> ${product.price}$ | <a href="/product/${product.id}">Open</a></p>
    </div>
</#list>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post">
    Title: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Author: <input type="text" name="author"/><br><br>
    <input type="submit" value="Add"/>
</form>
</body>
</html>