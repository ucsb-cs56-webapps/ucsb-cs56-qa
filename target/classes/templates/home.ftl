<!DOCTYPE html>
<html lang="en">
<head>
    <#include "./partials/head.ftl" />
    <link href="css/home.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <#include "./partials/navbar.ftl" />
    <div class="p-5" id="main_container">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/placeholder.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">Firstname Lastname</h5>
                <p class="card-text">Placeholder text for user description and other stuffzzzzzzzzzzzzzzzzz</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Points: 999999</li>
                <li class="list-group-item">Contributions: 123456</li>
                <li class="list-group-item">Acceptance Rate: 100%</li>
            </ul>
            <div class="card-body">
                <a href="#" class="card-link">Social Media 1</a>
                <a href="#" class="card-link">Social Media 2</a>
            </div>
        </div>
    </div>
</body>
</html>