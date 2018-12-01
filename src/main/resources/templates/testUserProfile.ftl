<!DOCTYPE html>
<html lang="en">
<head>
    <#include "./partials/head.ftl" />
    <title>User Profile Test</title>
</head>
<body>
    <#include "./partials/navbar.ftl" />
    <h1>User Profile Test</h1>

    <!-- DEBUG -->
    <!-- <p>This example demonstrates how to assign an "onclick" event to a p element.</p>
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
    -->

    <h2>Retrieved User Profile:</h2>
    <p>Name = ${name}</p>
    <p>UID = ${uid}</p>
    <p>Email = ${email}</p>

    <h1>End</h1>
</body>
</html>
