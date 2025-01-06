<!DOCTYPE html>
<html>
<head>
    <title>
        BUYSELL
    </title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>All products</h4>
<#list products as product>
    <div>
        <p><b>
                ${product.title}
            </b>
            ${product.price}| <a href="/product/${product.id}">More info</a>
        </p>
    </div>
</#list>
<hr>
<h3>
    Create new product
</h3>
<form action="/product/create" method="post">
    Name of product: <input type="text" name="title"/><br><br>
    Description of product: <input type="text" name="description"/><br><br>
    Price of product: <input type="number" name="price"/><br><br>
    City of product: <input type="text" name="city"/><br><br>
    Author of product: <input type="text" name="author"/><br><br>
    <input type="submit" value="add product">
</form>
</body>
</html>