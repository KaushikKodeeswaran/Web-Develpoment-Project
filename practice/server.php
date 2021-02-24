<?php

  session_start();

  //initializare variabile

  $username = "";
  $email = "";

  $errors = array();

  //conectare la baza de datefmt_create

  $conn = mysqli_connect('localhost','root','','practice') ;

  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  if(!mysqli_select_db($conn,'product_deal_india'))
  {
    echo "not selected";
  }
  //Inregistrare user

  $username =  $_POST['username'];
  $email = $_POST['email'];
  $password_1 =$_POST['password_1'];
  $password_2 = $_POST['password_2'];

  //Validare
  if (empty($username)) {
    array_push($errors, "Username is required");
  }
  if (empty($email)) {
    array_push($errors, "Email is required");
  }
  if (empty($password_1)) {
    array_push($errors, "Password is required");
  }
  if ($password_1 != $password_2) {
    array_push($errors, "The two passwords do not match");
  }

  //Unicitate username

  $user_check_query = "SELECT * FROM user WHERE username = '$username' or email = '$email' LIMIT 1";

  $results = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);

  if($user)
  {
    if($user['username'] === $username) array_push($errors, "Username already exists");
    if($user['email'] === $email) array_push($errors, "This email is already being used");
  }

  //Inregistrare user

  if(count($errors) == 0){

    $password = md5(password_1); // encriptare parola
    $query = "INSERT INTO user (username, email, password) VALUES ('$username', '$email', '$password')";
    mysqli_query($db,$query);
    $_SESSION['username'] = $username;
    $_SESSION['success'] = "You are now logged in";

    header('location: index.php');
  }

 ?>
