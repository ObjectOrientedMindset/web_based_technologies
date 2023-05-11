<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Airline_HW4.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>Flights</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins">

        <link rel="stylesheet" href="mycss.css">
    </head>

	<style type="text/css">
		.affix{
			top:5rem;
		}
		
		body{
            position: relative;
		}
        * {
  box-sizing: border-box;
}

body {
  
  justify-content: center;
  height: 100vh;
  font-family: "Lato", sans-serif;
  margin: 0;
}

.movie-container {
  margin: 20px 0;
}

.movie-container select {
  background-color: #fff;
  border: 0;
  border-radius: 5px;
  font-size: 16px;
  margin-left: 10px;
  padding: 5px 15px 5px 15px;
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
}

.container {
    margin-top:100px;
    margin-left:1000px;
    perspective: 1000px;
}

.seat {
  background-color: #444451;
  height: 26px;
  width: 32px;
  margin: 3px;
  font-size: 50px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.seat_selected {
  background-color: green;
}


.seat:nth-of-type(2) {
  margin-right: 18px;
}

.seat:nth-last-of-type(2) {
  margin-left: 18px;
}

.seat:not(.sold):hover {
  cursor: pointer;
  transform: scale(1.2);
}

.showcase .seat:not(.sold):hover {
  cursor: default;
  transform: scale(1);
}

.showcase {
  background: rgba(0, 0, 0, 0.1);
  padding: 5px 10px;
  border-radius: 5px;
  color: #777;
  list-style-type: none;
  display: flex;
  justify-content: space-between;
}

.showcase li {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 10px;
}
.showcase li small {
  margin-left: 2px;
}

.row {
  display: flex;
}

p.text{
    margin: 5px 0;
}

p.text span{
    color: rgb(158, 248, 158);
}
.user_info{
    margin-left:-300px;
    margin-top:50px;
}
		
	</style>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse" data-spy="affix"  style="border-radius:0px !important; margin:0;border: 0 ; width: 100%;top:0;z-index: 9999 !important">
					<div class="navbar-header">
						  <a class="navbar-brand" >AirlineTR</a>
						</div>						
					</div>
				</nav>
<!--container strat-->

		<div class="container" data-spy="affix" style="margin: 0;bottom: 0;float: left;top:5rem;width: 20%;height:100%; background-color: #222222">
            
		  <ul class="nav nav-pills nav-stacked" style="border-radius: 0">
		    <li>
		    	<a href="Default.aspx" id="m1">Home</a>
		    </li>
		  </ul>
		</div>

<!--selection-->
        
		<ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>Available</small>
      </li>
      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>
      <li>
        <div class="seat sold"></div>
        <small>Sold</small>
      </li>
    </ul>
    <div class="container">

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
        <div class="user_info">
       <input class="name" placeholder="Name" />
      <input class="surname" placeholder="Surname" />
      <input class="phone" placeholder="Phone" />
      <input class="email" placeholder="Email" />
      <input class="tc" placeholder="TC" />
      <asp:Button runat="server" Text=">" ID="btn1" OnClick="btn1_Click" />
        </div>

       </div>

    </form>
    
</body>
</html>
