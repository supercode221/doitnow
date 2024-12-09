<%-- 
    Document   : HomePage
    Created on : Dec 6, 2024, 8:17:36 PM
    Author     : Acer Aspire 7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doitnow</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            a {
                text-decoration: none;
                color: black;
            }

            p{
                margin: 0;
                padding: 0;
            }

            body {
                display: grid;
                justify-content: center;
            }

            .main {
                display: flex;
                gap: 180px;
                align-items: center;
                padding-top: 32px;
            }

            .images {
                display: grid;
                grid-template-rows: auto auto; /* Two equal-width columns */
                gap: 50px; /* Space between items */
            }
            
            .up, .down {
                display: flex;
            }

            .information-section {
                max-width: 400px;
            }

            .img {
                text-align: center;
            }

            .img img {
                width: 200px;
            }

            .item {
                display: flex;
                gap: 10px;
                justify-content: center;
                align-items: center;
                border: solid 1px #eee;
                padding: 10px 10px;
                margin-bottom: 10px;
                border-radius: 10px;
                transition: ease-in-out 0.2s;
            }

            .item p {
                font-weight: bold;
                font-size: 18px;
            }

            .item:hover {
                background-color: #f1f1f1;
            }

            .divide {
                height: 1px;
                width: auto;
                background-color: #f1f1f1;
                margin-bottom: 20px;
            }

            .fast-action {
                margin-bottom: 20px;
            }

            .register-section {
                margin-bottom: 20px;
            }

            .Email, .Password {
                border: solid 1px #f1f1f1;
                padding: 8px;
                display: grid;
                margin-bottom: 20px;
                border-radius: 10px;
            }

            .Email p, .Password p {
                font-size: 12px;
                font-weight: bold;
            }

            .Email input, .Password input {
                border: none;
                padding: 0;
                margin: 5px 0 0 0;
            }

            .Email input::placeholder, .Password input::placeholder {
                font-size: 17px;
            }

            .form button {
                width: 100%;
                padding: 10px;
                border: none;
                background-color: #dc4c3e;
                border-radius: 10px;
                color: white;
                font-weight: bold;
                font-size: 18px;
                transition: ease-in-out 0.2s;
                margin-bottom: 10px;
            }

            .form button:hover {
                background-color: #c3392c;
            }

            .bold {
                font-weight: bold;
                font-size: 15px;
                margin-top: 30px;
            }

            .below-bold {
                color: #525252;
                font-size: 14px;
            }
            
            .fa-brands {
                font-size: 16px;
            }
        </style>
    </head>
    <body style="padding: 24px;">
        <div class="container">
            <div class="logo" style="padding-bottom: 32px;">
                <span><a href="homepage"><img src="${pageContext.request.contextPath}/Asset/Image/Logo/logo.png" alt="doitnow" width="50"> doit-now</a></span>
            </div>
        </div>

        <div class="container">
            <div class="main">
                <div class="information-section">
                    <div class="register-section">
                        <p style="font-weight: bold; font-size: 31px; margin-bottom: 20px;">Log in<p>
                        <div class="fast-action">
                            <a href="https://accounts.google.com/o/oauth2/auth?scope=profile%20email%20openid%20
                                   https://www.googleapis.com/auth/userinfo.profile%20
                                   https://www.googleapis.com/auth/userinfo.email%20
                                   https://www.googleapis.com/auth/user.phonenumbers.read%20
                                   https://www.googleapis.com/auth/user.gender.read
                                   &redirect_uri=http://localhost:9999/doitnow/google&response_type=code&client_id=291530141647-7fu0blmidr83f2qkirhqt8r16457ppdj.apps.googleusercontent.com&approval_prompt=force">
                                <div class="item">
                                    <i class="fa-brands fa-google "></i>
                                    <p>Continue with Google</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="item">
                                    <i class="fa-brands fa-facebook " style="color: #0075ff;"></i>
                                    <p>Continue with Facebook</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="item">
                                    <i class="fa-brands fa-apple "></i>
                                    <p>Continue with Apple</p>
                                </div>
                            </a>
                        </div>
                        <div class="divide"></div>
                        <div class="form">
                            <form>
                                <div class="Email">
                                    <label for="email"><p>Email</p></label>
                                    <input id="email" type="email" required="" placeholder="Enter your email...">
                                </div>
                                <div class="Password">
                                    <label for="password"><p>Password</p></label>
                                    <input id="password" type="password" required="" placeholder="Enter your password...">
                                </div>
                                <button>Log in</button>
                            </form>
                        </div>
                        <a href="#" style="text-decoration: underline; font-size: 14px;">Forgot your password?</a>
                        <p style="font-size: 14px; margin-top: 10px;">By continuing with Google, Apple, or Email, you agree to doitnow’s <a href="#" style="text-decoration: underline;">Terms of Service</a> and <a href="#" style="text-decoration: underline;">Privacy Policy</a>.</p>
                    </div>
                    <div class="divide"></div>
                    <p style="text-align: center; font-size: 14px;">Don’t have an account? <a href="Register.jsp" style="text-decoration: underline;">Sign up</a></p>
                </div>
                <div class="images">
                    <div class="up">
                        <div class="img">
                            <img src="https://todoist.b-cdn.net/assets/images/303f5819b5ed1e224afcf8407064f629.jpg">
                            <p class="bold">30 millions+</p>
                            <p class="below-bold">app downloads</p>
                        </div>
                        <div class="img">
                            <img src="https://todoist.b-cdn.net/assets/images/36f9765400f603fa8ec42ff8146fbc15.jpg">
                            <p class="bold">15+ years</p>
                            <p class="below-bold">in business</p>
                        </div>
                    </div>
                    <div class="down">
                        <div class="img">
                            <img src="https://todoist.b-cdn.net/assets/images/296179d0173b761dc233ecd5e8ce6717.jpg">
                            <p class="bold">2 billion+</p>
                            <p class="below-bold">app downloads</p>
                        </div>
                        <div class="img">
                            <img src="https://todoist.b-cdn.net/assets/images/37deb75469924c6270004e36b7351d94.jpg">
                            <p class="bold">100,000+</p>
                            <p class="below-bold">team users</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
