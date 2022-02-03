<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Spring Shop</title>
</head>
<body>
<h1>Spring Shop</h1>
<hr>
<h4>Admin panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone</th>
        <th>Activity</th>
        <th>Role</th>
        <th>Ban</th>
        <th>Edit</th>
        <th>About</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}">About</a></th>
        </tr>
    <#else>
        <h3>No users</h3>
    </#list>
</table>
</body>
</html>