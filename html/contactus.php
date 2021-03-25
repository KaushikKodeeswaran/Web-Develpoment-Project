<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/webdevelopment/css/contactus.css">
</head>
<body>

<div>
  <div style="text-align:center">
    <h2>Contact Us</h2>
  </div>
  <div class="image" style="text-align:center">
    <img src="/webdevelopment/images/logo.jpeg" alt="logo" height="110" width="260">
  </div>
  <div class="row">
    <div class="column">
      <form action="/webdevelopment/php/contactus.php" method="post">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">
        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
        <label for="country">Country</label>
        <select id="country" name="country">
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
        </select>
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
        <input type="submit" value="Submit" name="submit">
      </form>
    </div>
  </div>
</div>

</body>
</html>
