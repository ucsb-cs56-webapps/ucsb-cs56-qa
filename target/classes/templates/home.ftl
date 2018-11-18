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
        <div class="card" style="width: 18rem; display: inline-block">
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
        <div id="most_recent_q" class="ml-4" style="display: inline-block;">
            <div class="pt-2" id="question_box">
                <h3>Most Recent Question:</h3>
                <div>
                    <p>Is tomato a fruit or vegetable?</p>
                </div>
            </div>
            <div class="pt-2" id="answers_box">
            </div>
        </div>
    </div>
</body>
</html>