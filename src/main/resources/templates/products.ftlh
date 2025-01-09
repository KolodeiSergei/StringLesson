<!DOCTYPE html>
<html>
<head>
    <title>
        BUYSELL
    </title>
</head>
<body>
<h1>BUYSELL </h1>
<hr>
<#if user.email??>
<h3>
    Username: <i>${user.name}</i>
</h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" name="Logout">
</form>
<#else >
<a href="/login">
    Login
</a>
</#if>
<hr>
<h4>All products</h4>
<form action="/" method="get">
    Search for name:<label>
        <input type="text" name="title">
    </label><br>
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div>
        <p><b>
                ${product.title}
            </b>
            ${product.price}| <a href="/product/${product.id}">More info</a>
        </p>
    </div>
</#list>
<#if user.email??>
    <hr>
    <h3>
        Create new product
    </h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name of product: <input type="text" name="title"/><br><br>
        Description of product: <input type="text" name="description"/><br><br>
        Price of product: <input type="number" name="price"/><br><br>
        City of product: <input type="text" name="city"/><br><br>
        First photo: <input type="file" name="file1"/><br><br>
        Second photo: <input type="file" name="file2"/><br><br>
        Third photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="add product">
    </form>
</#if>
</body>
</html>