<!DOCTYPE HTML>
<head>
    <title>Create New User</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h1>Form</h1>

    <!-- <form:form method="POST" action="/create_user" modelAttribute="user">
        <table>
            <tr>
                <td><form:label path="name">Name</form:label></td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td><form:label path="email">Email</form:label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><form:label path="userid">UserID</form:label></td>
                <td><form:input path="userid"/></td>
            </tr>
            <tr>
                <td><form:label path="password">Password</form:label></td>
                <td><form:input path="password"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"/></td>
            </tr>
        </table>
    </form> -->

    <form action="/create_user" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name">
        <label for="email">Email</label>
        <input type="text" id="email" name="email">
        <label for="userid">UserID</label>
        <input type="text" name="userid">
        <label for="password">Password</label>
        <input type="text" name="password">
        <button type="submit">Submit!</button>
    </form>

</body>
</html>
