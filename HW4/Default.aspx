<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Airline_HW4.Default" %>

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
		
	</style>
<body data-spy="scroll" data-target="#myscroll">
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


<!--scrooll container start-->

			<div id="#myscroll" class="container" style="margin-left: 0;margin-top: 5rem; float: right; width:80%; padding: 0 5rem 0 5rem">
			<h2>Flights</h2>
			 <hr>
				<br>
			  	<table class="table table-striped table-hover">
				    <thead>
					    <tr>
					    	<th>#</th>
					        <th>FlightNo</th>
					        <th>From</th>
					        <th>To</th>
					        <th>Departure Date</th>
					        <th>Time</th>
					        <th>Capacity</th>
					    </tr>
				    </thead>
				    <tbody>
					    <tr>
					    	<td>1</td>
					    	<td>2021</td>
					        <td>İstanbul</td>
					        <td>Eskişehir</td>
					        <td>20/10/2017</td>
					        <td>04:30 pm</td>
					        <td>200</td>
					        <td>
						  	<asp:Button Text=">" runat="server" ID="btn1" OnClick="btn1_Click" />
					  		</td>
					    </tr>
					    <tr>
					    	<td>2</td>
					    	<td>3500</td>
					        <td>İstanbul</td>
					        <td>Ankara</td>
					        <td>20/10/2017</td>
					        <td>04:50 pm</td>
					        <td>300</td>
					        <td>
						  	<asp:Button Text=">" runat="server" ID="btn2" OnClick="btn2_Click" />
					  		</td>
					    </tr>
					    <tr>
					    	<td>3</td>
					    	<td>2555</td>
					        <td>İstanbul</td>
					        <td>Antalya</td>
					        <td>20/10/2017</td>
					        <td>10:30 pm</td>
					        <td>150</td>
					        <td>
						  	<asp:Button Text=">" runat="server" ID="btn3" OnClick="btn3_Click" />
					  		</td>
					    </tr>
				    </tbody>
			  </table>

				  <ul class="pagination">
					  <li ><a href="#">&laquo;</a></li>
					  <li class="active"><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">..</a></li>
					  <li><a href="#">5</a></li>
					  <li><a href="#">&raquo;</a></li>
					</ul>
			</div>

				<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 id="myModalLabel">Delete Confirmation</h3>
						</div>
						<div class="modal-body">
							<p class="error-text"><i class="fa fa-warning modal-icon"></i> Are you sure you want to delete the Flight?<br>This cannot be undone.</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
							<button class="btn btn-danger" data-dismiss="modal">Delete</button>
						</div>
					  </div>
					</div>
				</div>
    </form>
</body>
</html>
