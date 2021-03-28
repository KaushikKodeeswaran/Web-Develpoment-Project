<?php
session_start();
?>
<!DOCTYPE html>
<html>
  <head>
    <style>
      .container{
        display: flex;
        justify-content: center;
        padding-top: 100px;
      }
    </style>
  </head>
  <body>
    <h2 style="color:#ff8000">Please Login ..!!</h2>
    <div class="container">
      <form action="demo_database_linking.php" method="post" >
        <label ><b>Username</b></label>
        <input type="text"  placeholder="Enter Username" name="username" required>
        <br><br>
        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        <br><br>
        <button  type="submit" name="submit">Login</button>
      </form>
    </div>
  </body>
</html>

<?php
mail("kaushik@kgm.in", "Here is the subject line","insert your message here", "From: kaushik.k@science.christuniversity.in");
echo " mail sent";
?>
