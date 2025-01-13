<!DOCTYPE html>
<html>
<head>
    <title>
        BUYSELL
    </title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>User info ${user.name}</h3>
<b> Name:</b>${user.name}<br>
<b> Phonenumber:</b>${user.phoneNumber}<br>
<b> Email:</b>${user.email}<br>

<h4>Products by ${user.name}</h4>

<#list products as product>
    <div>
        <p><b>
                ${product.title}
            </b>
            ${product.price}| <a href="/product/${product.id}">More info</a>
        </p>
    </div>
<#else >
    <h3>
        Not found products
    </h3>
</#list>

</body>
</html>