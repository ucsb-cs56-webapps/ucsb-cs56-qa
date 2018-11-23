<!DOCTYPE html>
<html lang="en">
<head>
    <#include "./partials/head.ftl" />
    <title>Database Test</title>
</head>
<body>
    <#include "./partials/navbar.ftl" />
    <h1>Database Test</h1>

    <!-- DEBUG-->
    <!-- <p>This example demonstrates how to assign an "onclick" event to a p element.</p> -->
    <p></p>
    <p id="demo" onclick="myFunction()">Click me.</p>
    <p></p>

    <script>
    function myFunction() {
        // let num = firebase.database().ref('recent').once('value');
        // let prompt = "YOU CLICKED ME! recent:" + num.toString();
        document.getElementById("demo").innerHTML = "CLICKED.";
    }
    </script>



    <h1>End</h1>
</body>
</html>
