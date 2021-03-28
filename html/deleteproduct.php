<?php
session_start();
?>
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
 <h1> Remove Products</h1></center>

  <div class="container">

        <div class="card">


              <?php
              // (B) PROCESS SEARCH WHEN FORM SUBMITTED
              if (isset($_POST['search'])) {
                // (B1) SEARCH FOR USERS
                require "2-search.php";}
              ?>
              <div class="container">



                <form method="post" action="deleteproduct.php">
                    <b> Search the Product</b>
                    <input type="text" placeholder=" Valid Product Name " id="someID" name="search">
                    <div id="result"></div>
                    <input type="submit" value="search" ></input>
                    <hr>


                  </form>
                  <?php
              // (B) PROCESS SEARCH WHEN FORM SUBMITTED
              if (isset($_POST['search'])) {
                // (B2) DISPLAY RESULTS
                if (count($results) > 0) {
                  foreach ($results as $r) {

                    printf("
                    <a href='#' onclick=".'"document.getElementById('."'someID').value='%s';".'"'.">%s</a></br>
                    ", $r['NAME'],$r['NAME']);
                  }
                } else { echo "No results found"; }
              }
              ?>

              <form method="post" action="/webdevelopment/html/deleteproductdb.php">
                <script>
                function a(){
                  var userInput = document.getElementById('someID').value;
                  document.getElementById('SELECTEDID').value = userInput;
                }
                </script>
                <button type="button" onclick="a()" name="button">check</button>
                <label for="Sname" ><b>Selected Product</b></label>
                <input type="text"  placeholder="Enter Product Name" id="SELECTEDID" name="sname" required>
            <button  type="submit" >Remove Product</button>
          </form>
          </div>

  </div>
  <script>
</form>
</body>
</html>
