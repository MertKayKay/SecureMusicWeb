<!DOCTYPE html>
<html>

    <head>
        <title>Secure Music</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--StyleSheets: CSS and JS-->
        <link rel="stylesheet" type="text/css" href="SecureMusicCSS.css" />
        <link href="https://fonts.googleapis.com/css?family=Gugi" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="SecureMusicJS.js"></script>
    </head>

    <body>

        <!--nav div containing links to all pages-->
        <div class="nav">
            <ul class="navigationBar">
                <li><a href="index.html">Home</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="news.html">News</a></li>
                <li><a href="loginregister.html">Login/Register</a></li>
                <li><a href="profile.html">Profile</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>

        <!--header div containing title, logo, and background image-->
        <div class="header">
            <h1>SECURE MUSIC</h1>
            <h3 class="tagline">Congratulations! You are our 1 millionth visitor. Click here to claim your prize.</h3>
        </div>

        <div class="slideshowcontainer">
            <img class="headerBackground" src="images\header1.jpg" alt="Header Background">

        </div>

        <!--main div containing all page content-->
        <div class="main">

            <!--Login form requiring username and password-->
            <div class="loginSection">

                <!--Uses Javascript to swap between login and register tabs-->
                <div class="loginRegister">
                    <button id="log" onclick="switchToLogin()"> Login </button>
                    <button id="reg" onclick="switchToRegister()"> Register </button>
                </div>

                <!--Login Form-->
                <form id="login" class="tabContent" method="post" action="Login">
                    <fieldset>
                        <h3>Enter your username and password</h3>
                        <!--Form only allows certain characters to be entered-->
                        <label>Username: </label><input type="text" pattern="\w+" name="username" id="user" placeholder="Enter Username" required><br/>
                        <label>Password: </label><input type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="pass" placeholder="Enter Password" id="password"><br/>
                        <p><a href="reset.html">Forgotten Password?</a></p>
                        ${invalidMessage}
                        <input class="loginsubmission" type="submit" value="Login" />
                    </fieldset>
                </form>

                <!--Register Form-->
                <form id="register" class="tabContent" method="post" action="Register">
                    <fieldset>
                        <h3>Create your username and password</h3>
                        <!--Form only allows certain characters to be entered-->
                        <label>Username: </label><input type="text" pattern="\w+" name="newusername" id="newuser" placeholder="Enter Username" required onclick = hideSetPassword()><br/>
                        <label>Email: </label><input type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" name="email" placeholder="nickgrajecki@compuserve.com" id="email" required><br/>
                        <label>Password: </label><input type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="newpassword" placeholder="Enter Password" id="newpass" onclick = setPassword()><br/>
                        <div id="passwordReminder">
                            <p>Password must contain at least:</p>
                            <ul id="passwordList">
                                <li>One uppercase letter</li>
                                <li>One lowercase letter</li>
                                <li>One number</li>
                                <li>Eight characters</li>
                            </ul>
                        </div>
                        <input class="newusersubmission" type="submit" value="Register" />
                    </fieldset>
                </form>

            </div>

            <!--div containing forum directory in the form of links-->
            <div class="forumDirectory">
                <h1>WHAT'S ON?</h1>
                <h1>TRENDING TOPICS</h1>
                <h1>BUSINESS NEWS</h1>
            </div>
        </div>

        <!--contains footer information, i.e.pages, social media links, contact-->
        <div class="footer">

            <div class="socialMedia">
                <img id="facebook" src="fb.jpg" alt="Facebook Link">
                <img id="twitter" src="twitter.jpg" alt="Twitter Link">
                <img id="pinterest" src="pin.jpg" alt="Pinterest Link">
                <img id="tumblr" src="tumblr.jpg" alt="Tumblr Link">
                <img id="linkedIn" src="linked.jpg" alt="LinkedIn Link">
            </div>

            <div class="footerLinks">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="news.html">News</a></li>
                    <li><a href="loginregister.html">Login/Register</a></li>
                    <li><a href="profile.html">Profile</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </div>

            <div class="contactLinks">
                <ul>
                    <li>Phone</li>
                    <li>Email</li>
                    <li>Address</li>
                </ul>
            </div>

        </div>

    </body>

</html>