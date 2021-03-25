<?php
// (B) PROCESS SEARCH WHEN FORM SUBMITTED
if (isset($_POST['search'])) {
  // (B1) SEARCH FOR USERS
  require "2-search.php";}
?>
<div class="container">



  <form method="post" action="modifyproduct.php">
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
