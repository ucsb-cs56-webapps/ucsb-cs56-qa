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
    <p>This example demonstrates how to assign an "onclick" event to a p element.</p>

    <p id="demo" onclick="myFunction()">Click me.</p>

    <script>
    function myFunction() {
        let num = 7;
        let prompt = "YOU CLICKED ME!" + num.toString();
        document.getElementById("demo").innerHTML = prompt;
    }
    </script>


    <!-- DEBUG
    <p id="flag" onclick="clickTheButton()">Test Button</p>

    <#include "./partials/database.ftl" />
    <script type="text/javascript">
        function clickTheButton() {
            document.getElementById("flag").innerHTML = "CLICKED";
            // if (!firebase.database().ref('recent').exists()) {
            //     firebase.database().ref().set({
            //         recent: 0
            //     });
            // }
            // document.getElementById("flag").innerHTML = "f2";
            // let ct = firebase.database().ref('recent').val()+1;
            // firebase.database().ref().set({
            //     recent: ct
            // })
            // document.getElementById("flag").innerHTML = "CLICKED" + ct.toString();
            // let st = "data = ${ct}";
            // writeSampleDataSegment(ct, st);
        }
    </script>
    -->
    <h1>End</h1>
</body>
</html>
