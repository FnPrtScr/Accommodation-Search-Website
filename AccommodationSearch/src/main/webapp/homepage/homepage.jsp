<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Bootstrap 5 Slider With Text Animation</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">FPT <span id="last" style="color: #fff;">Accommodation</span></a> <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-bs-target="#navbarSupportedContent" data-bs-toggle="collapse" type="button"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="<%= request.getContextPath()%>/home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= request.getContextPath()%>/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= request.getContextPath()%>/blog">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= request.getContextPath()%>/community">Community</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= request.getContextPath()%>/contact">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" id="sign-up" href="<%= request.getContextPath()%>/signup">Sign Up</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="sign-in" href="<%= request.getContextPath()%>/signin">Sig //n In</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="carousel slide" data-bs-ride="carousel" id="carouselExampleIndicators">
            <div class="carousel-indicators">
                <button aria-label="Slide 1" class="active" data-bs-slide-to="0" data-bs-target="#carouselExampleIndicators" type="button"></button> <button aria-label="Slide 2" data-bs-slide-to="1" data-bs-target="#carouselExampleIndicators" type="button"></button> <button aria-label="Slide 3" data-bs-slide-to="2" data-bs-target="#carouselExampleIndicators" type="button"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img alt="..." class="d-block w-100" src="css/fu.jpg">
                    <div id='login-form'class='login-page'>
                        <div class="form-box">
                            <div class='button-box'>
                                <div id='btn'></div>
                                <button type='button'onclick='login()'class='toggle-btn'>Log In</button>
                                <button type='button'onclick='register()'class='toggle-btn'>Register</button>
                            </div>
                            <form id='login' class='input-group-login'>
                                <input type='text'class='input-field'placeholder='Email Id' required >
                                <input type='password'class='input-field'placeholder='Enter Password' required>
                                <input type='checkbox'class='check-box'><span>Remember Password</span>
                                <button type='submit'class='submit-btn'>Log in</button>
                            </form>
                            <form id='register' class='input-group-register'>
                                <input type='text'class='input-field'placeholder='First Name' required>
                                <input type='text'class='input-field'placeholder='Last Name ' required>
                                <input type='email'class='input-field'placeholder='Email Id' required>
                                <input type='password'class='input-field'placeholder='Enter Password' required>
                                <input type='password'class='input-field'placeholder='Confirm Password'  required>
                                <input type='checkbox'class='check-box'><span>I agree to the terms and                                                   conditions</span>
                                <button type='submit'class='submit-btn'>Register</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img alt="..." class="d-block w-100" src="css/fu_2.jpg">
                    <div class="carousel-caption">
                        <h5 class="animated bounceInRight" style="animation-delay: 1s">Graphics Design</h5>
                        <p class="animated bounceInLeft d-none d-md-block" style="animation-delay: 2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                        <p class="animated bounceInRight" style="animation-delay: 3s"><a href="#">Learn More</a></p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img alt="..." class="d-block w-100" src="css/fu_3.jpg">
                    <div class="carousel-caption">
                        <h5 class="animated bounceInRight" style="animation-delay: 1s">Photography</h5>
                        <p class="animated bounceInLeft d-none d-md-block" style="animation-delay: 2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                        <p class="animated bounceInRight" style="animation-delay: 3s"><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div><button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span> <span class="visually-hidden">Previous</span></button> <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#carouselExampleIndicators" type="button"><span aria-hidden="true" class="carousel-control-next-icon"></span> <span class="visually-hidden">Next</span></button>
        </div>
        <!-- Start of LiveChat (www.livechat.com) code -->
        <script>
            window.__lc = window.__lc || {};
            window.__lc.license = 14701947;
            ;
            (function (n, t, c) {
                function i(n) {
                    return e._h ? e._h.apply(null, n) : e._q.push(n)
                }
                var e = {_q: [], _h: null, _v: "2.0", on: function () {
                        i(["on", c.call(arguments)])
                    }, once: function () {
                        i(["once", c.call(arguments)])
                    }, off: function () {
                        i(["off", c.call(arguments)])
                    }, get: function () {
                        if (!e._h)
                            throw new Error("[LiveChatWidget] You can't use getters before load.");
                        return i(["get", c.call(arguments)])
                    }, call: function () {
                        i(["call", c.call(arguments)])
                    }, init: function () {
                        var n = t.createElement("script");
                        n.async = !0, n.type = "text/javascript", n.src = "https://cdn.livechatinc.com/tracking.js", t.head.appendChild(n)
                    }};
                !n.__lc.asyncInit && e.init(), n.LiveChatWidget = n.LiveChatWidget || e
            }(window, document, [].slice))
        </script>
        <noscript><a href="https://www.livechat.com/chat-with/14701947/" rel="nofollow">Chat with us</a>, powered by <a href="https://www.livechat.com/?welcome" rel="noopener nofollow" target="_blank">LiveChat</a></noscript>
        <!-- End of LiveChat code -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
        </script> 
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js">
        </script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js">
        </script>
    </body>
</html>
