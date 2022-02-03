<!DOCTYPE html>
<html>
<head>
    <title>Spring Shop</title>
</head>
<body>
<h1>Spring Shop</h1>
<h3>${user.name} details</h3>
<b>Phone: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Products of ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title} </b> ${product.price}$ | <a href="/product/${product.id}">Open</a></p>
    </div>
    <#else>
    <h3>No products</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>