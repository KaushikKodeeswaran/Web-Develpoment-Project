<?php include('server.php') ?>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
</head>
<body>

	<div class="container">
		<div class="header">
			<h2>Log In</h2>
		</div>

		<form action="login.php" method="post">
			
			<div>
				<label for="username">Username</label>
				<input type="text" name="username" required>
			</div>

			<div>
				<label for="password">Password : </label>
				<input type="password" name="password_1" required>
			</div>

			<button type="submit" name="login_user">Log In</button>

			<p>Already a user?<a href="Registration.php"><b>Log in</b></a></p>


		</form>


	</div>

</body>
</html>