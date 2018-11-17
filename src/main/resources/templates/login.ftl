<!DOCTYPE html>
<html lang="en">
<head>
    <#include "./partials/head.ftl" />
    <link href="/src/main/resources/static/css/login.css" rel="stylesheet" />
    <title>UCSB Q&A</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Orbitron', sans-serif;
        }

        #main_container {
            background-image: -webkit-linear-gradient(-30deg, rgb(23, 131, 226) 50%, rgb(231, 171, 7) 50%);
            height: 100vh;
        }

            #main_title {
                color: white;
            }

            #login_box {
                border: 2px solid white;
                border-radius: 20px;
                color: white;
                text-align: center;
            }

                #login_btn {
                    border: 1px solid white;
                }
    </style>
</head>
<body>
    <div class="container-fluid p-5" id="main_container">
        <h1 id="main_title">UCSB Q&A</h1>
        <div class="w-50 p-4" id="login_box">
            <form>
                <div class="form-group row">
                    <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputUsername" placeholder="Username">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                <button id="login_btn" type="submit" class="btn btn-success w-50">Login</button>
            </form>
        </div>
        <a>Don't have an account? Click here to register!</a>
    </div>
</body>
</html>
