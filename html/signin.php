<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/webdevelopment/css/signin.css">
<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
</head>
<body>

<h2 style="color:#ff8000">Please Login ..!!</h2>

<form action="/webdevelopment/php/signin.php" method="POST">
  <div class="imgcontainer">
    <img src="/webdevelopment/images/logo.jpeg"  class="avatar">
  </div>
  <div class="container">
    <form action="/webdevelopment/php/signin.php" method="POST">
      <label for="uname"><b>Username</b></label>
      <input type="text" id="user" name="user" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" id="psw" name="psw" required>

      <button  type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
  </form>
  </div>
  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

<?php
if($_GET['Failed']==true)
{
?>

<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  <strong><?php echo $_GET['Failed']; ?></strong>
</div>


<?php
}
 ?>
<script src="file:///C:/Users/91830/Dropbox/My%20PC%20(Kaushik)/Desktop/web%20development/javascript/signin.js"></script>
</body>
</html>
