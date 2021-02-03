<!DOCTYPE html>
<?php
session_start();
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
?>
<html>
<head>

  <link rel="stylesheet" href="/webdevelopment/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="/webdevelopment/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="/webdevelopment/css/seller.css">
<style>
  .topbar{
    width: 100%;
    height:14px;
    background-color: gray;
    display: flex;
    justify-content:center;
    padding-top: 40px;



  }
  .container{
    display: flex;
    padding-top: 0px;
    text-decoration: none;

  }
  .nav {
    text-decoration: none;
    display: flex;
    flex-wrap: wrap;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
    background-color: orange;
    text-decoration: none;
  }
  .abv{
    text-decoration: none;
      background-color: red;
  }
  .sign{
    text-decoration: none;
    display: flex;
    justify-content: flex-end;
    padding-right: 20px;
    background-color: gray;
    height:34px;
    text-decoration: none;
  }

  .customer1 {
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
  }

  .customer1 td, .customer1 th {
    border: 1px solid #ddd;
    padding: 8px;
  }

  .customer1 tr:nth-child(even){background-color: #f2f2f2;}

  .customer1 tr:hover {background-color: #ddd;}

  .customer1 th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: orange;
    color: white;
  }


#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: orange;
  color: white;
}
.container001{
  display:
}
.tbcolor{
  background-color: green;
}
</style>
</head>
<body>

<div class="container001">
<div class="container1">
    <div class="topbar">

<b>Admin Panel</b>

    </div>

    <div class="sign">

      <a  href=" index1.php" style="text-decoration: none;">Logout</a>
    </div>


  </div>
  <div class="">
    <table id="customers">
      <tr>
        <th width: 100px>
          <center>
        <input type="checkbox" id="msg1" name="msgselect" value="message">
        </center>
</th>
        <th>Message</th>
        <th>User</th>
        <th>Time</th>


      </tr>

          <?php
            $sql = "select * from message_admin";
            $result = mysqli_query($conn,$sql);
            $count = 10;

            while($row = mysqli_fetch_array($result))
            {
                  $name = $row['FIRSTNAME'];
                  $time = $row['TIME'];
                  $subject =  $row['SUBJECT']
          ?>


              <tr>
                <th width: 100px>
                  <center>
                <input type="checkbox" id="msg1" name="msgselect" value="message">
                </center>
                </th>


                <th><?php echo $subject; ?></th>
                <th><?php echo $name ?></th>
                <th><?php echo $time ?></th>

              </tr>

          <?php
            }
          ?>


    </table>

  </div>
</div>
</body>
</html>
