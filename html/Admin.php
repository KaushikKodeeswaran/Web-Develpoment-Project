<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <title>Product Deal India | SELLER</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/webdevelopment/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/webdevelopment/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/webdevelopment/css/seller.css">

    <!-- End layout styles -->
    <style>
    .topbar{
      width: 100%;
      height:24px;
      background-color: gray;
      display: flex;
      justify-content: center;
      padding-top: 20px;
      text-decoration: none;
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
    </style>

  </head>
  <body>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
    // Load google charts
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    // Draw the chart and set the chart values
    function drawChart() {
    var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['Electronics', 8],
    ['Sports', 2],
    ['Home&furniture', 4],
    ['Clothing', 2],
    ['Books', 8]
    ]);

    // Optional; add a title and set the width and height of the chart
    var options = {'title':'Sales Summary(category)', 'width':550, 'height':500};

    // Display the chart inside the <div> element with id="piechart"
    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
    chart.draw(data, options);
    }
    </script>


<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,


	axisX:{
		interval: 1
	},
	axisY2:{
		interlacedColor: "rgba(1,77,101,.2)",
		gridColor: "rgba(1,77,101,.1)",
		title: "INCOME"
	},
	data: [{
		type: "bar",
		name: "companies",
		axisYType: "secondary",
		color: "#014D65",
		dataPoints: [
			{ y: 3, label: "Monday" },
			{ y: 7, label: "Tuesday" },
			{ y: 5, label: "Wednesday" },
			{ y: 9, label: "Thursday" },
			{ y: 7, label: "Friday" },
			{ y: 7, label: "Saturday" },
			{ y: 9, label: "Sunday" },

		]
	}]
});
chart.render();

}
</script>




    <div class="topbar">
        <div class="title">
          Admin Panel
        </div>

    </div>
    <div class="sign">
      <a  href=" index1.php" style="text-decoration: none;">Logout</a>
    </div>
    <div class="container">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
              <div class="abv">
                <li class="nav-item">
                  <a class="nav-link" href="index (edited).html">
                    <span class="menu-title">Dashboard</span>
                  </a>
                </li>
              </div>
              <li class="nav-item">
                <a class="nav-link" href="#ui-basic" style="text-decoration: none;">
                  <span class="menu-title">Users</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#localhost" style="text-decoration: none;">
                  <span class="menu-title">Sellers</span>
                </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost" style="text-decoration: none;">
                <span class="menu-title">Reports</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost" style="text-decoration: none;">
                <span class="menu-title">Messages</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#localhost">
                <span class="menu-title"></span>
              </a>
            </li>

            </ul>
        </nav>
            <div id="piechart"></div>
              <div id="chartContainer" style="height: 370px; width: 30%;"></div>

    </div>
  </body>
</html>
