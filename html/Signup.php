<html>
<head>
<link rel="stylesheet" href="/webdevelopment/css/signup.css">
<script src="https://www.google.com/recaptcha/api.js"></script>
<title> Product deal India</title>
<p><h1>Product Deal India &nbsp </h1></p>
<p style="color:#ff8000";> TELL US ABOUT YOUR BUSINESS </p><br>
<hr height="30%">
</head>
<body>
<img class="relative" src="/webdevelopment/images/logo.jpeg" alt="Error Loading image" width="200"
     height="130">
<form action="/webdevelopment/php/seller_add.php" method="POST">
  <br>Username <br><input type="text" name="username"><br>
  <br>Firstname <br><input type="text" name="fname"><br>
  <br>Lastname <br><input type="text" name="lname"><br>
  <br>Email Address <br><input type="text" name="email"><br>
  <br>Password <br><input type="text" name="pwd"><br>
  <br>Repeat Password <br><input type="text" name="pwd2"><br>
  <br>Phone Number <br><input type="text" name="phone"><br>
  <br>Store Name <br><input type="text" name="store"><br>
  <br>
  <hr>
  <br>Street Address <br><input type="text" name="Street1"><br>
  Street Address Line 2<br><input type="text" name="Street2"><br>
  City <br><input type="text" name="city"><br>
  State <br><input type="text" name="state"><br>
  Country<br>
  <select name="country" >
    <option value="- Select one Option -">- Select one Option -</option>
    <option value="AFGHANISTAN">AFGHANISTAN</option>
    <option value="ARMENIA">ARMENIA</option>
    <option value="AZERBAIJAN">AZERBAIJAN</option>
    <option value="BAHRAIN">BAHRAIN</option>
    <option value="BANGLADESH">BANGLADESH</option>
    <option value="BHUTAN">BHUTAN</option>
    <option value="BRUNEI">BRUNEI</option>
    <option value="CAMBODIA">CAMBODIA</option>
    <option value="CHINA">CHINA</option>
    <option value="CYPRUS">CYPRUS</option>
</select><br>
  Zip code <br><input type="text" id="pin" name="pin"><br>


  <hr width>
  <br>
    <label class="container">I Accept the Terms&Conditions
      <input type="checkbox" checked="checked">
      <span class="checkmark"></span>
    </label>

   <div class="g-recaptcha" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>
    <input type="submit" value="Submit">

</form>
</body>
</html>
