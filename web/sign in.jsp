<%-- 
    Document   : sign in
    Created on : 12 janv. 2022, 20:18:51
    Author     : asus
--%>
<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Title -->
    <title>Create new account | Graindashboard UI Kit</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="public/img/favicon.ico">

    <!-- Template -->
    <link rel="stylesheet" href="public/graindashboard/css/graindashboard.css">
  </head>

  <body class="">

    <main class="main">

      <div class="content">

			<div class="container-fluid pb-5">

				<div class="row justify-content-md-center">
					<div class="card-wrapper col-12 col-md-4 mt-5">
						<div class="brand text-center mb-3">
							<a href="/"><img src="public/img/logo.png"></a>
						</div>
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Create new account</h4>
								<form action="UserController" method="POST">

                                                        <div class="form-group">

                                                        <label>Username</label>
                                                        <input required="" type="text" class="form-control p_input" name="nom" id="nom" />
                                                        </div>
                                                        <div class="form-group">

                                                        <label>prenom</label>
                                                        <input required="" type="text" class="form-control p_input" name="prenom" id="prenom" />
                                                        </div>
                                                        <div class="form-group">
                                                        <label>Email</label>
                                                        <input required="" type="text" class="form-control p_input" name="username" id="username" />
                                                        </div>
                                                        <div class="form-group">
                                                        <label>Password</label>
                                                        <input required="" type="pass" class="form-control p_input" name="pass" id="pass" />
                                                        </div>
                                                        <div class="form-group">
                                                        <label>confimer</label>
                                                        <input required="" type="pass" class="form-control p_input" name="cpass" id="cpass" />
                                                        </div>
                                                        <div class="form-group d-flex align-items-center justify-content-between">


                                                        </div>
                                                        <div class="text-center">

                                                        <button id="send" type="submit" value="Envoyer" class="btn btn-primary btn-block enter-btn">Login</button>
                                                        </div>

                                                        <p class="sign-up text-center">Already have an Account?<a href="login.jsp"> Sign Up</a></p>
                                                        <p class="terms">By creating an account you are accepting our<a href="#"> Terms & Conditions</a></p>
                                                        </form>
							</div>
						</div>
						<footer class="footer mt-3">
							<div class="container-fluid">
								<div class="footer-content text-center small">
									<span class="text-muted">&copy; 2019 Graindashboard. All Rights Reserved.</span>
								</div>
							</div>
						</footer>
					</div>
				</div>



			</div>

      </div>
    </main>


	<script src="public/graindashboard/js/graindashboard.js"></script>
    <script src="public/graindashboard/js/graindashboard.vendor.js"></script>
    
  </body>
</html>