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
                <a href="#" class="card-link">Social Media</a>
                <a href="#" class="card-link">Social Media</a>
            </div>
        </div>
        <div id="most_recent_q" class="ml-4" style="display: inline-block;">
            <div class="pt-2" id="question_box">
                <h3>Your Most Recent Question:</h3>
                <div><p>Is tomato a fruit or vegetable?</p></div>
            </div>
            <div class="pt-2" id="answers_box">
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 1 (Community Favourite):</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>1337</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">Tomatoes are fruits that are considered vegetables by nutritionists. Botanically, a fruit is a ripened flower ovary and contains seeds. ... For some reason, people got hung up on tomatoes, but the “fruit or vegetable” question could also work for any vegetable with seeds. Source: Myself</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 2:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>117</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">Vegetable!</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 3:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>15</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">Fruit!</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 4:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>0</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">I don't know</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 5:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>-666</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">Why do people ask stupid questions like this?</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 6:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>-1234</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">What's a tomato?</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
                <!-- Single Answer-->
                <div class="answer_wrapper">
                    <div class="answer_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User 7:</h6>
                        <div class="vote float-right mr-2">
                            <button type="submit" class="badge badge-warning"><img src="img/favourite.png"></button>
                            <button type="submit" class="badge badge-success"><img src="img/up.png"></button>
                            <p>-9999</p>
                            <button type="submit" class="badge badge-danger"><img src="img/down.png"></button>
                        </div>
                    </div>
                    <div class="answer_content">
                        <p class="mt-2">BOTTOM TEXT</p>
                    </div>
                </div>
                <!-- End of Single Answer-->
            </div>
        </div>
        <div class="ml-4" id="explore_box">
            <div class="pt-2" id="explore_title_wrapper">
                <h3>Explore Popular Questions!</h3>
                <h5>2 hot questions, 1 controversial question being asked</h5>
            </div>
            <div class="pt-2" id="explore_content_wrapper">
                <!-- Single Question-->
                <div class="single_explore hot">
                    <div class="explore_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User A:</h6>
                    </div>
                    <div class="explore_content">
                        <p class="mt-2">Why is the food in dining commons so bad?</p>
                    </div>
                </div>
                <!-- End of Single Question-->
                <!-- Single Question-->
                <div class="single_explore hot">
                    <div class="explore_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User B:</h6>
                    </div>
                    <div class="explore_content">
                        <p class="mt-2">Has anyone taken Conrad's CS56 before? What was it like?</p>
                    </div>
                </div>
                <!-- End of Single Question-->
                <!-- Single Question-->
                <div class="single_explore controversial">
                    <div class="explore_header">
                        <img class="ml-2" src="img/person.png">
                        <h6 class="ml-2">User C:</h6>
                    </div>
                    <div class="explore_content">
                        <p class="mt-2">Can these protesters in front of the library shut up already? I need to study.</p>
                    </div>
                </div>
                <!-- End of Single Question-->
            </div>
        </div>
    </div>
</body>
</html>