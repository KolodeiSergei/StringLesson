<!DOCTYPE html>
<html>
<head>
    <title>
        BUYSELL
    </title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>Product info</h4>
<#list images as img>
    <img src="/images/${img.id}" height="500px" alt="500px"/><br><br>
</#list>
<b> Name:</b>${product.title}<br>
<b> Description:</b>${product.description}<br>
<b> Price:</b>${product.price}<br>
<b> City:</b>${product.city}<br>
<b> Author:</b>${product.author}<br>
<h3>
    Delete product
</h3>
<form action="/product/delete/#{product.id}" method="post">
    <input type="submit" value="delete">
</form>
</body>
</html>