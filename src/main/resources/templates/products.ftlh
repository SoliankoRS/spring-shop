<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Spring Shop</title>
</head>
<body>
<h1>Spring Shop</h1>
<hr>
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout">
    </form>
<#else>
    <a href="/login">Sign in</a>
</#if>
<hr>
<h4>All products</h4>
<form action="/" method="get">
    Find by title product: <input type="text" name="title">
    <input type="submit" value="Find">
</form>
<#list products as product>
    <div>
        <p><b>${product.title} </b> ${product.price}$ | <a href="/product/${product.id}">Open</a></p>
    </div>
<#else>
    <h3>No products</h3>
</#list>
<hr>
<#if user.email??>
    <hr>
    <h3>Create new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        Image1: <input type="file" name="file1"/><br><br>
        Image2: <input type="file" name="file2"/><br><br>
        image3: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add"/>
    </form>
</#if>
</body>
</html>