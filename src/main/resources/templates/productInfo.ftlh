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
<b> Author:</b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>