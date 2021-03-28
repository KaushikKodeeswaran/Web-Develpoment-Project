
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/webdevelopment/css/product.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/webdevelopment/css/seller.css">

<!-- End layout styles -->
<style>
.topbar123{
  width: 100%;
  height:24px;
  background-color: gray;
  display: flex;
  justify-content: center;
  padding-top: 20px;
  text-decoration: none;
}
.container123{
  display: flex;
  padding-top: 0px;
  text-decoration: none;

}
.nav123 {
  text-decoration: none;
  display: flex;
  flex-wrap: wrap;
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
  background-color: orange;
  text-decoration: none;
}
.abv123{
  text-decoration: none;
    background-color: red;
}
.sign123{
  text-decoration: none;
  display: flex;
  justify-content: flex-end;
  padding-right: 20px;
  background-color: gray;
  height:54px;
  text-decoration: none;
  font-size: 15px;
  padding-left: 1px;
  font-style: bold;
  color: black;
  padding-right: px;
}
.sign123 div{
  padding-left: 10px;
}
.title{
  font-size: 20px;
}
.color123{
  background-color: orange;
  height: 70px;
  display: flex;
  justify-content: center;
}
</style>
</head>
<body>
<body>
<center>
 <h1> Announce</h1></center>

  <div class="container">

        <div class="card">


                <form method="post" action="adminannounce.php">
                  <label for="msg" ><b>Message</b></label>
                  <input type="text"  placeholder="Enter the Message" id="msg" name="msg" required>
                  <p>Please select the Type</p>
                  <input type="radio" id="red" name="type" value="alert alert-danger">
                  <label for="red">Red</label><br>
                  <input type="radio" id="blue" name="type" value="alert alert-info">
                  <label for="female">Blue</label><br>
                  <input type="radio" id="Orange" name="type" value="alert alert-warning">
                  <label for="Orange">Orange</label>
                  <input type="radio" id="Green" name="type" value="alert alert-success">
                  <label for="green">Green</label>
                <button  type="submit" >Send</button>
          </form>
          </div>
<?php session_start();
$servername = "127.0.0.1";
// $image = $_POST['image'];
// Create connection
$conn = mysqli_connect('127.0.0.1', 'root', '');
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'product_deal_india'))
{
  echo "not selected";
}
if(isset($_POST['msg'])){
$msg = $_POST['msg'];
$type = $_POST['type'];
	$date = date("Y-m-d H:i:s");
$sql = "INSERT INTO announce (Message,Color,Date) VALUES ('$msg','$type','$date')";

if (!mysqli_query($conn, $sql)) {
  echo "not inserted";
}
else {
  echo " inserted";
  // header("location:/webdevelopment/html/adminpanel.php");
};
}
 ?>
  </div>
  <script>
</form>
</body>
</html>
