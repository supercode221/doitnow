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

            .logo a{
                font-weight: bold;
                font-size: 20px;
                color: red;
            }

            .header-sticky {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px;
                background-color: white;
                position: sticky;
                z-index: 1001;
            }

            .nav-items {
                display: flex;
                gap: 18px;
            }

            .nav-items a {
                font-size: 16px;
                padding: 5px 10px;
                border-radius: 10px;
            }

            .nav-items a:hover{
                background-color: #eee;
            }

            .nav-items button {
                border: none;
                border-radius: 10px;
                padding: 7px 15px;
                font-size: 15px;
                font-weight: bold;
                background-color: red;
                color: white;
            }

            .nav-items button:hover {
                background: #d30000;
            }

            .divide {
                width: 2px;
                height: auto;
                background-color: #eee;
                border-radius: 10px;
            }

            .main {
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 24px;
                margin-top: 48px;
                margin-bottom: 36px;
            }

            .text {
                max-width: 500px;
            }

            .text button {
                padding: 20px 18px;
                border: none;
                border-radius: 15px;
                color: white;
                background-color: red;
                font-weight: bold;
                box-shadow: 4px 6px 0 0 #ff8f8f;
                transition: all 0.1s ease; /* Smooth transition for the effect */
            }

            .text button:hover {
                box-shadow: 2px 2px 0 0 #ff8f8f; /* Shadow shifts to make it appear pressed */
                transform: translateY(2px); /* Moves the button down to simulate pressing */
            }

            .des {
                color: #8b8b8b;
            }

            .title {
                font-size: 55px;
                font-weight: bold;
            }

            .dropdown-item {
                margin-bottom: 3px;
                padding: 5px 10px;
                border-radius: 10px;
            }

            .dropdown i{
                color: #a8a8a8;
                font-size: 16px;
            }

            .dropdown a {
                font-size: 16px;
                padding: 3px;
                display: flex;
                gap: 20px;
                align-items: center;
            }

            .dropdown .dropdown-item:hover{
                background-color: #eee;
            }

            .dropdown {
                position: absolute;
                background-color: white;
                box-shadow: 0 0 50px 0 #ffeccc;
                padding: 10px;
                border-radius: 10px;
                top: 75px;
                right: 585px;
                z-index: 1002;
                display: none;
                border: solid 1px #dddddd;
            }
        </style>
    </head>
    <body>
        <header>
            <div class="container">
                <div class="header-sticky">
                    <div class="logo">
                        <span><a href="#"><img src="${pageContext.request.contextPath}/Asset/Image/Logo/logo.png" alt="doitnow" width="50"> doit-now</a></span>
                    </div>
                    <div class="nav-items">
                        <a href="#">Features</a>
                        <a href="#">For Teams</a>
                        <a id="resources" href="#" style="display: flex; gap: 10px; align-items: center; position: relative;">
                            Resources <i class="fa-solid fa-angle-down"></i>
                        </a>
                        <a href="#">Pricing</a>
                        <div class="divide"></div>
                        <a href="#">Log in</a>
                        <button id="start1">Starts for free</button>
                    </div>
                </div>
                <div class="dropdown">
                    <div class="dropdown-item">
                        <a href="#"><i class="fa-solid fa-puzzle-piece"></i> Integrations</a>
                    </div>
                    <div class="dropdown-item">
                        <a href="#"><i class="fa-solid fa-puzzle-piece"></i> Templates</a>
                    </div>
                    <div class="dropdown-item">
                        <a href="#"><i class="fa-solid fa-puzzle-piece"></i> Getting Started</a>
                    </div>
                    <div class="dropdown-item">
                        <a href="#"><i class="fa-solid fa-puzzle-piece"></i> Help Center</a>
                    </div>
                </div>
            </div>
        </header>

        <div class="container">
            <div class="main">
                <div class="text">
                    <h1 class="title" style="margin-bottom: 24px">Organize your work and life, finally.</h1>
                    <h5 class="des">Simplify life for both you and your team with the world’s #1 task manager and to-do list app.</h5>
                    <h5 class="des" style="margin: 12px 0; padding-bottom: 32px;">374K+ ★★★★★ reviews from.</h5>
                    <a href="#"><button id="start2">Starts for free</button></a>
                </div>
                <div class="image">
                    <img src="https://res.cloudinary.com/imagist/image/fetch/q_auto,f_auto,c_scale,w_1536/https%3A%2F%2Ftodoist.com%2Fstatic%2Fhome-teams%2Fintro%2Fwide%2Fheaderui.en.png" width="700">
                </div>
            </div>
        </div>

        <footer>

        </footer>

        <script>
            $(document).ready(function () {
                let hideTimeout;

                $('#resources').on('mouseenter', function () {
                    clearTimeout(hideTimeout); // Clear any scheduled hide action
                    $(".dropdown").stop(true, true).fadeIn('fast');
                });

                $('.dropdown').on('mouseenter', function () {
                    clearTimeout(hideTimeout); // Clear any scheduled hide action
                });

                $('#resources, .dropdown').on('mouseleave', function () {
                    hideTimeout = setTimeout(function () {
                        $(".dropdown").stop(true, true).fadeOut('fast');
                    }, 200); // Delay to account for the gap
                });

                $("#start1").on('click', function () {
                    location.href = 'User-Section/Public/Register.jsp';
                });
                
                $("#start2").on('click', function () {
                    location.href = 'User-Section/Public/Register.jsp';
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
