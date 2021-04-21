<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800&display=swap" rel="stylesheet">
		<link rel="icon" type="image/png" href="/resources/assets/icons/favicon.svg">

		<title>Total Office</title>
	</head>

	<body class="">
	<div class="py-lg-5"></div>
<div class="col-11 col-md-5 col-lg-4 col-xxl-3 mx-auto mt-5 pt-5 p-4 bg-white rounded-lg p-4 text-center">
<img class="d-block mx-auto mb-5" src="/resources/assets/img/logo_totalplay.svg">
<p class="h3 main mb-3">Inicia sesi&oacute;n</p>
<p class="medium gray mb-5">Ingresa tus credenciales para iniciar sesi&oacute;n</p>
<a href="" id="googleLogin" class="btn btn-outline-muted d-inline-block rounded-lg smoth py-3 px-4 mb-5">
<img class="mr-3" src="/resources/assets/icons/generales/google_logo.svg">
<span class="main ">Continuar con Google</span>
</a>

</div>>
<li class="nav-item logged-in" style="display: none;">
            <a class="nav-link" href="#" id="logout"></a>
          </li>
  
  <div class="container p-4">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <ul class="">
        </ul>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="signupModal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>SignUp</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="signup-form">
            <div class="form-group">
              <input type="text" id="signup-email" class="form-control" placeholder="Title" required>
            </div>
            <div class="form-group">
              <input type="password" id="signup-password" class="form-control" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary">Save changes</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="signinModal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalSignin" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>SignIn</h3>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="login-form">
            <div class="form-group">
              <input type="text" id="login-email" class="form-control" placeholder="Title" required>
            </div>
            <div class="form-group">
              <input type="password" id="login-password" class="form-control" placeholder="Password" required>
            </div>
            <button type="button" class="btn btn-info btn-block" id="googleLogin">Login with Google</button>
          </form>
        </div>
      </div>
    </div>
  </div>

		<!-- JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="/resources/js/ajax-jquery-3.5.1.min.js"></script>
		<script src="/resources/js/bootstrap.bundle.min.js"></script>
		<script src="/resources/js/functions.js"></script>
	    
		<!-- The core Firebase JS SDK is always required and must be listed first -->
		
		
<script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-firestore.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyC4Fgm6-jryvQ0UD8yKdQGFcJZccZPvjNA",
    authDomain: "totalplay-home-office-dev.firebaseapp.com",
    projectId: "totalplay-home-office-dev",
    storageBucket: "totalplay-home-office-dev.appspot.com",
    messagingSenderId: "1081018443674",
    appId: "1:1081018443674:web:f549798bfe7a852d83bc23"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  const auth = firebase.auth();
  const fs = firebase.firestore();
</script>
		<script src="/resources/js/login/main.js"></script>

	</body>
</html>