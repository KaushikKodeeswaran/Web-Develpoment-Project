
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

  <div class="topbar123">
      <div class="title">
        <strong> Seller Panel</strong>
      </div>

  </div>
  <div class="sign123">
  <div>
    <a  href=" index1.php" style="text-decoration: none;">Dashboard&#x20;&#x20;&#x20;&#x20;</a>
  </div>
  <div >
    <a  href=" index1.php" style="text-decoration: none;">Logout</a>
  </div>
</div>
  <div class="top">
</div >

<div class="color123">
  <h2 style="text-align:center">Product / Modify Product</h2>
</div>



  <div class="imgcontainer">
    <img src="" class="avatar">
  </div>

  // (B) PROCESS SEARCH WHEN FORM SUBMITTED

<script>
function fetch() {
  // (A) GET SEARCH TERM
  var data = new FormData();
  data.append('search', document.getElementById("search").value);
  data.append('ajax', 1);

  // (B) AJAX SEARCH REQUEST
  var xhr = new XMLHttpRequest();
  xhr.open('POST', "/webdevelopment/html/2-search.php");
  xhr.onload = function () {
    var results = JSON.parse(this.response),
    wrapper = document.getElementById("results");
    if (results.length > 0) {
      wrapper.innerHTML = "";
      for (let res of results) {
        let line = document.createElement("div");
        line.innerHTML = `${res['NAME']}`;
        wrapper.appendChild(line);
      }
    } else { wrapper.innerHTML = "No results found"; }
  };
  xhr.send(data);
  return false;
}
</script>
    <form method="post" onsubmit="return fetch();">
        <b> Search the Product</b>
        <input type="text" placeholder=" Valid Product Name " id="search">
        <input type="submit" value="search" ></input>
        <hr>
      </form>
      <div id="results"></div>

<form>

      <label for="Pname" ><b>Product Name</b></label>
      <input type="text" id="product" placeholder="Enter Product Name" name="name" required>
      <label for="pro"><b>Description</b></label>
      <br><br>
      <textarea class="desc" rows="4" cols="50" name="description" placeholder="    Enter the Description"  style="margin: 0px; width: 1000px; height: 133px;"></textarea>
      <br>
      <label for="PBrand"><b>Brand</b></label>
      <input type="text" placeholder="Enter the Brand" name="brand" required>

      <label for="Ptype"><b>Product Type</b></label><br>
      <select  size="1" style="width:300px;height:50px" name="category" id="product">
        <option value=""></option>
        <option value="Electronics">Electronics</option>
        <option value="Sports">Sports</option>
        <option value="Clothing">Clothing</option>
        <option value="Home&Furniture">Home & Furniture</option>
        <option value="Books">Books</option>
      </select>
      <br><br>
      <label for="PPrice"><b>Pricing (in Rs.)</b></label>
      <input type="text" placeholder="Enter the Price" name="price" required>


      <label class="form-label" for="customFile">Add IMG file</label>
      <input name="image" type="file" class="form-control" id="customFile" />
      <br><button   name="submit">Add Product</button><br><br>
      <input type="submit" name="cancel">Cancel</input>
    </form>
  </div>
  <script>


</body>
</html>
