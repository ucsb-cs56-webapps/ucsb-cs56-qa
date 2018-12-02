<!DOCTYPE html>
<html>
    <head>
        <title>Question List Test</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="css/style.css" /> -->
        </head>
    <body>
        <h2>List of cities</h2>

        <table>
            <tr>
                <th>QID</th>
                <th>Title</th>
                <th>Content</th>
            </tr>

            <#list questions as qn>
                <tr>
                    <td>${qn[0]}</td>
                    <td>${qn[1]}</td>
                    <td>${qn[2]}</td>
                </tr>
            </#list>
        </table>
    </body>
</html>
