<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/loginRegister.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<title>Employee Leave Management System</title>
</head>
<body>
	<div class="container">

		<header>
			<h1>Alacriti Infosystems</h1>
		</header>
		<section>
			<div id="container_demo">
				<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
					id="tologin"></a>
				<div id="wrapper">
					<div id="login" class="animate form">
						<form action="login.jsp" autocomplete="on">
							<h1>Login</h1>
							<p>
								<label for="email" class="email"> Email </label> <input
									id="email" name="email" required="required" type="text" />
							</p>
							<p>
								<label for="password" class="password"> Password </label> <input
									id="password" name="password" required="required"
									type="password" />
							</p>
							<p>
								<button type="submit" class="btn btn-primary">Login</button>
							</p>
							<p class="change_link">
								Not a member yet ? <a href="#toregister" class="to_register">Join
									us</a>
							</p>
						</form>
					</div>

					<div id="register" class="animate form">
						<form action="register.jsp" autocomplete="on" method="post">
							<h1>Sign up</h1>
							<p>
								<label for="name" class="name"> Name</label> 
								<input id="name" name="name" required="required" type="text" />
							</p>
							<p>
								<label for="password" class="password"> Password </label> 
								<input id="password" name="password" required="required" type="password" />
							</p>
							<p>
								<label for="code" class="code"> Code</label> 
								<input id="code" name="code" required="required" type="text" />
							</p>
							<p>
								<label for="email" class="email"> Email</label> 
								<input id="email" name="email" required="required" type="email" />
							</p>
							<!-- <p>
								<label for="sex" class="sex"> Sex</label>
								<input type="radio" name="sex" value="male" />Male <input
									type="radio" name="sex" value="female" />Female
							</p> -->
							<p class="signin button">
								<button type="submit">Sign up</button>
							</p>
							<p class="change_link">
								Already a member ? <a href="#tologin" class="to_register">
									Go and log in </a>
							</p>
						</form>
					</div>

				</div>
			</div>
		</section>
	</div>
</body>
</html>
